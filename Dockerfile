# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files first (for caching)
COPY package*.json ./

# Install dependencies
Run npm install

# Copy the rest of your code
COPY . .

# Expose port (change if your app uses another one)
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]


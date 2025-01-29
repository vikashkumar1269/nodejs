# Use the official Node.js image
FROM node:14

# Set the working directory in the container
WORKDIR /nodejs-app

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Set the default command to run the Node.js server
CMD ["node", "server.js"]

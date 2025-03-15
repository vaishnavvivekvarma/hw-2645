# Use the official Nginx image as the base image
FROM nginx:alpine

# Set the working directory to Nginx's default web root
WORKDIR /usr/share/nginx/html

# Remove the default Nginx index.html
RUN rm -rf ./*

# Copy your survey.html file to the Nginx web directory
COPY survey.html index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]


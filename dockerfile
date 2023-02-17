FROM node:17-alpine as builder
WORKDIR /app
COPY package.json .
COPY package-lock.json .
COPY . . 
RUN npm i
RUN npm run build .
CMD ["npm", "start"]

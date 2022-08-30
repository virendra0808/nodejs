FROM node:16

#ARG REPO=848186050993.dkr.ecr.ap-southeast-1.amazonaws.com
#FROM ${REPO}/admin-app-node:latest
WORKDIR /usr/src/app
# COPY package*.json ./
ENV NODE_ENV=production
RUN npm install
COPY . .
EXPOSE 5000
#CMD ["new_js", "run.js"]
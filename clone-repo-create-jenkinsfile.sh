echo "pipeline {
    agent {
        docker {
            image 'node:6-alpine' 
            args '-p 3000:3000' 
        }
    }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
    }
}" > Jenkinsfile

git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git add .
git commit -m "added jenkinsfile"

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Comment:
##the function makeCacheMatrix gets list containing a function to
##set values of the matrix, get values of the matrix, set the inverse of
## the matrix and at last get the inverse of it.

makeCacheMatrix <- function(x = matrix()) {
  k <- NULL
  set <- function(y) {
    x <<- y
    k <<-NULL
  }
  get <- function() x
  setinverse <- function(inverse) k <<- inverse
  getinverse <- function() m
  list(set = set, get = get, 
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## comment:
## This function computes de inverse of the matrix returned
## by the makeCachematrix function

cacheSolve <- function(x, ...) {
  K <- x$getinverse()
  if(!is.null(k)) {
    message("getting cached data")
    return(k)
  }
  data <- x$get()
  k <- solve(data, ...)
  x$setinverse(k)
  k
}

        ## Return a matrix that is the inverse of 'x'

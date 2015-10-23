
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	inv <- NULL   ## variable 'inv' is set to NULL
	set <- function(y){ ## set matrix x to a new matrix y and reset the inverse
		x <<- y
		inv <<- NULL
	}
	get <- fuction() x ## returns the matrix x
	setinv <- function(inverse)  inv <<- inverse  ## sets the inverse 'inv' to variable inverse
	getinv <- function() inv  ## returns the inverse, 'inv'
	list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	inv <- x$getinv()  ## get the current inverse of the cached matrix
	if(!is.null(inv)){  ## check if inverse has already been calculated 
		message("getting cached inverse matrix")  ## if 'inv' is not NULL, return the data
		return(inv)
	}
	z <- x$get()  ## grab cached x into new variable z
	setinv <- function(inverse) inv <<- inverse  ## sets the inverse 'inv' to variable inverse
	inv <- solve(z, ...) ## calculate the inverse 
	x$setinv(inv)
        return(inv) ## return the data 'inv'
}

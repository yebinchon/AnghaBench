#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int mpi_size_t ;
typedef  scalar_t__ mpi_ptr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int KARATSUBA_THRESHOLD ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,int) ; 

int
FUNC6( mpi_ptr_t prodp, mpi_ptr_t up, mpi_ptr_t vp, mpi_size_t size)
{
    if( up == vp ) {
	if( size < KARATSUBA_THRESHOLD )
	    FUNC3( prodp, up, size );
	else {
	    mpi_ptr_t tspace;
	    tspace = FUNC0( 2 * size );
	    if (!tspace)
		    return -ENOMEM;
	    FUNC2( prodp, up, size, tspace );
	    FUNC1( tspace );
	}
    }
    else {
	if( size < KARATSUBA_THRESHOLD )
	    FUNC5( prodp, up, vp, size );
	else {
	    mpi_ptr_t tspace;
	    tspace = FUNC0( 2 * size );
	    if (!tspace)
		    return -ENOMEM;
	    FUNC4 (prodp, up, vp, size, tspace);
	    FUNC1( tspace );
	}
    }

    return 0;
}
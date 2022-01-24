#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mpi_size_t ;
typedef  scalar_t__* mpi_ptr_t ;
typedef  scalar_t__ mpi_limb_t ;
struct TYPE_6__ {scalar_t__ nlimbs; int sign; scalar_t__* d; } ;
typedef  TYPE_1__* MPI ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__) ; 

int
FUNC7(MPI w, MPI u, MPI v)
{
    mpi_ptr_t wp, up, vp;
    mpi_size_t usize, vsize, wsize;
    int usign, vsign, wsign;

    if( u->nlimbs < v->nlimbs ) { /* Swap U and V. */
	usize = v->nlimbs;
	usign = v->sign;
	vsize = u->nlimbs;
	vsign = u->sign;
	wsize = usize + 1;
	if (FUNC2(w, wsize) < 0)
		return -ENOMEM;
	/* These must be after realloc (u or v may be the same as w).  */
	up    = v->d;
	vp    = u->d;
    }
    else {
	usize = u->nlimbs;
	usign = u->sign;
	vsize = v->nlimbs;
	vsign = v->sign;
	wsize = usize + 1;
	if (FUNC2(w, wsize) < 0)
		return -ENOMEM;
	/* These must be after realloc (u or v may be the same as w).  */
	up    = u->d;
	vp    = v->d;
    }
    wp = w->d;
    wsign = 0;

    if( !vsize ) {  /* simple */
        FUNC0(wp, up, usize );
	wsize = usize;
	wsign = usign;
    }
    else if( usign != vsign ) { /* different sign */
	/* This test is right since USIZE >= VSIZE */
	if( usize != vsize ) {
	    FUNC5(wp, up, usize, vp, vsize);
	    wsize = usize;
	    FUNC1(wp, wsize);
	    wsign = usign;
	}
	else if( FUNC4(up, vp, usize) < 0 ) {
	    FUNC6(wp, vp, up, usize);
	    wsize = usize;
	    FUNC1(wp, wsize);
	    if( !usign )
		wsign = 1;
	}
	else {
	    FUNC6(wp, up, vp, usize);
	    wsize = usize;
	    FUNC1(wp, wsize);
	    if( usign )
		wsign = 1;
	}
    }
    else { /* U and V have same sign. Add them. */
	mpi_limb_t cy = FUNC3(wp, up, usize, vp, vsize);
	wp[usize] = cy;
	wsize = usize + cy;
	if( usign )
	    wsign = 1;
    }

    w->nlimbs = wsize;
    w->sign = wsign;
    return 0;
}
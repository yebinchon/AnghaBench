#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  long mpi_size_t ;
typedef  scalar_t__* mpi_ptr_t ;
typedef  scalar_t__ mpi_limb_t ;
struct TYPE_5__ {long nlimbs; int sign; long alloced; scalar_t__* d; } ;
typedef  TYPE_1__* MPI ;

/* Variables and functions */
 unsigned long BITS_PER_MPI_LIMB ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,long) ; 
 scalar_t__ FUNC2 (TYPE_1__*,long) ; 
 scalar_t__ FUNC3 (scalar_t__*,scalar_t__*,long,unsigned long) ; 

int
FUNC4( MPI w, MPI u, unsigned long cnt)
{
    mpi_size_t usize, wsize, limb_cnt;
    mpi_ptr_t wp;
    mpi_limb_t wlimb;
    int usign, wsign;

    usize = u->nlimbs;
    usign = u->sign;

    if( !usize ) {
	w->nlimbs = 0;
	w->sign = 0;
	return 0;
    }

    limb_cnt = cnt / BITS_PER_MPI_LIMB;
    wsize = usize + limb_cnt + 1;
    if( w->alloced < wsize )
	    if (FUNC2(w, wsize ) < 0)
		    return -ENOMEM;
    wp = w->d;
    wsize = usize + limb_cnt;
    wsign = usign;

    cnt %= BITS_PER_MPI_LIMB;
    if( cnt ) {
	wlimb = FUNC3( wp + limb_cnt, u->d, usize, cnt );
	if( wlimb ) {
	    wp[wsize] = wlimb;
	    wsize++;
	}
    }
    else {
	FUNC0( wp + limb_cnt, u->d, usize );
    }

    /* Zero all whole limbs at low end.  Do it here and not before calling
     * mpn_lshift, not to lose for U == W.  */
    FUNC1( wp, limb_cnt );

    w->nlimbs = wsize;
    w->sign = wsign;
    return 0;
}
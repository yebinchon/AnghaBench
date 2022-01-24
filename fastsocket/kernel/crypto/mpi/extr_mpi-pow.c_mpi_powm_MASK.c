#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct karatsuba_ctx {int dummy; } ;
typedef  int mpi_size_t ;
typedef  int* mpi_ptr_t ;
typedef  int mpi_limb_t ;
typedef  scalar_t__ mpi_limb_signed_t ;
struct TYPE_8__ {int nlimbs; int sign; int* d; int alloced; } ;
typedef  TYPE_1__* MPI ;

/* Variables and functions */
 int BITS_PER_MPI_LIMB ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int ENOMEM ; 
 int KARATSUBA_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct karatsuba_ctx*,int /*<<< orphan*/ ,int) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int*,int,int*,int) ; 
 int FUNC12 (int*,int*,int,int) ; 
 scalar_t__ FUNC13 (int*,int*,int,int*,int,int*) ; 
 scalar_t__ FUNC14 (int*,int*,int,int*,int,struct karatsuba_ctx*) ; 
 int /*<<< orphan*/  FUNC15 (struct karatsuba_ctx*) ; 
 int /*<<< orphan*/  FUNC16 (int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int*,int*,int,int*,int) ; 

int
FUNC18( MPI res, MPI base, MPI exp, MPI mod)
{
    mpi_ptr_t mp_marker=NULL, bp_marker=NULL, ep_marker=NULL;
    mpi_ptr_t xp_marker=NULL;
    mpi_ptr_t tspace = NULL;
    mpi_ptr_t  rp, ep, mp, bp;
    mpi_size_t esize, msize, bsize, rsize;
    int        esign, msign, bsign, rsign;
    mpi_size_t size;
    int mod_shift_cnt;
    int negative_result;
    int assign_rp=0;
    mpi_size_t tsize=0;   /* to avoid compiler warning */
			  /* fixme: we should check that the warning is void*/
    int rc = -ENOMEM;

    esize = exp->nlimbs;
    msize = mod->nlimbs;
    size = 2 * msize;
    esign = exp->sign;
    msign = mod->sign;

    rp = res->d;
    ep = exp->d;

    if( !msize )
	msize = 1 / msize;	    /* provoke a signal */

    if( !esize ) {
	/* Exponent is zero, result is 1 mod MOD, i.e., 1 or 0
	 * depending on if MOD equals 1.  */
	rp[0] = 1;
	res->nlimbs = (msize == 1 && mod->d[0] == 1) ? 0 : 1;
	res->sign = 0;
	goto leave;
    }

    /* Normalize MOD (i.e. make its most significant bit set) as required by
     * mpn_divrem.  This will make the intermediate values in the calculation
     * slightly larger, but the correct result is obtained after a final
     * reduction using the original MOD value.	*/
    mp = mp_marker = FUNC5(msize);
    if (!mp)
	    goto enomem;
    FUNC3( mod_shift_cnt, mod->d[msize-1] );
    if( mod_shift_cnt )
	FUNC12( mp, mod->d, msize, mod_shift_cnt );
    else
	FUNC1( mp, mod->d, msize );

    bsize = base->nlimbs;
    bsign = base->sign;
    if( bsize > msize ) { /* The base is larger than the module. Reduce it. */
	/* Allocate (BSIZE + 1) with space for remainder and quotient.
	 * (The quotient is (bsize - msize + 1) limbs.)  */
	bp = bp_marker = FUNC5( bsize + 1);
	if (!bp)
		goto enomem;
	FUNC1( bp, base->d, bsize );
	/* We don't care about the quotient, store it above the remainder,
	 * at BP + MSIZE.  */
	FUNC11( bp + msize, 0, bp, bsize, mp, msize );
	bsize = msize;
	/* Canonicalize the base, since we are going to multiply with it
	 * quite a few times.  */
	FUNC2( bp, bsize );
    }
    else
	bp = base->d;

    if( !bsize ) {
	res->nlimbs = 0;
	res->sign = 0;
	goto leave;
    }

    if( res->alloced < size ) {
	/* We have to allocate more space for RES.  If any of the input
	 * parameters are identical to RES, defer deallocation of the old
	 * space.  */
	if( rp == ep || rp == mp || rp == bp ) {
	    rp = FUNC5(size);
	    if (!rp)
		    goto enomem;
	    assign_rp = 1;
	}
	else {
		if (FUNC8( res, size ) < 0)
			goto enomem;
	    rp = res->d;
	}
    }
    else { /* Make BASE, EXP and MOD not overlap with RES.  */
	if( rp == bp ) {
	    /* RES and BASE are identical.  Allocate temp. space for BASE.  */
		FUNC0(bp_marker);
	    bp = bp_marker = FUNC5(bsize);
	    if (!bp)
		    goto enomem;
	    FUNC1(bp, rp, bsize);
	}
	if( rp == ep ) {
	    /* RES and EXP are identical.  Allocate temp. space for EXP.  */
	    ep = ep_marker = FUNC5(esize);
	    if (!ep)
		    goto enomem;
	    FUNC1(ep, rp, esize);
	}
	if( rp == mp ) {
	    /* RES and MOD are identical.  Allocate temporary space for MOD.*/
	    FUNC0(mp_marker);
	    mp = mp_marker = FUNC5(msize);
	    if (!mp)
		    goto enomem;
	    FUNC1(mp, rp, msize);
	}
    }

    FUNC1( rp, bp, bsize );
    rsize = bsize;
    rsign = bsign;

    {
	mpi_size_t i;
	mpi_ptr_t xp;
	int c;
	mpi_limb_t e;
	mpi_limb_t carry_limb;
	struct karatsuba_ctx karactx;

	xp = xp_marker = FUNC5(2 * (msize + 1));
	if (xp)
		goto enomem;

	FUNC4( &karactx, 0, sizeof karactx );
	negative_result = (ep[0] & 1) && base->sign;

	i = esize - 1;
	e = ep[i];
	FUNC3 (c, e);
	e = (e << c) << 1;     /* shift the exp bits to the left, lose msb */
	c = BITS_PER_MPI_LIMB - 1 - c;

	/* Main loop.
	 *
	 * Make the result be pointed to alternately by XP and RP.  This
	 * helps us avoid block copying, which would otherwise be necessary
	 * with the overlap restrictions of mpihelp_divmod. With 50% probability
	 * the result after this loop will be in the area originally pointed
	 * by RP (==RES->d), and with 50% probability in the area originally
	 * pointed to by XP.
	 */

	for(;;) {
	    while( c ) {
		mpi_ptr_t tp;
		mpi_size_t xsize;

		/*if (mpihelp_mul_n(xp, rp, rp, rsize) < 0) goto enomem */
		if( rsize < KARATSUBA_THRESHOLD )
		    FUNC10( xp, rp, rsize );
		else {
		    if( !tspace ) {
			tsize = 2 * rsize;
			tspace = FUNC5(tsize);
			if (!tspace)
				goto enomem;
		    }
		    else if( tsize < (2*rsize) ) {
			FUNC7( tspace );
			tsize = 2 * rsize;
			tspace = FUNC5(tsize);
			if (!tspace)
				goto enomem;
		    }
		    FUNC9( xp, rp, rsize, tspace );
		}

		xsize = 2 * rsize;
		if( xsize > msize ) {
		    FUNC11(xp + msize, 0, xp, xsize, mp, msize);
		    xsize = msize;
		}

		tp = rp; rp = xp; xp = tp;
		rsize = xsize;

		if( (mpi_limb_signed_t)e < 0 ) {
		    /*mpihelp_mul( xp, rp, rsize, bp, bsize );*/
		    if( bsize < KARATSUBA_THRESHOLD ) {
			    mpi_limb_t tmp;
			    if (FUNC13( xp, rp, rsize, bp, bsize, &tmp ) < 0)
				    goto enomem;
		    }
		    else {
			    if (FUNC14(
					xp, rp, rsize, bp, bsize, &karactx ) < 0)
				    goto enomem;
		    }

		    xsize = rsize + bsize;
		    if( xsize > msize ) {
			FUNC11(xp + msize, 0, xp, xsize, mp, msize);
			xsize = msize;
		    }

		    tp = rp; rp = xp; xp = tp;
		    rsize = xsize;
		}
		e <<= 1;
		c--;
	    }

	    i--;
	    if( i < 0 )
		break;
	    e = ep[i];
	    c = BITS_PER_MPI_LIMB;
	}

	/* We shifted MOD, the modulo reduction argument, left MOD_SHIFT_CNT
	 * steps.  Adjust the result by reducing it with the original MOD.
	 *
	 * Also make sure the result is put in RES->d (where it already
	 * might be, see above).
	 */
	if( mod_shift_cnt ) {
	    carry_limb = FUNC12( res->d, rp, rsize, mod_shift_cnt);
	    rp = res->d;
	    if( carry_limb ) {
		rp[rsize] = carry_limb;
		rsize++;
	    }
	}
	else {
	    FUNC1( res->d, rp, rsize);
	    rp = res->d;
	}

	if( rsize >= msize ) {
	    FUNC11(rp + msize, 0, rp, rsize, mp, msize);
	    rsize = msize;
	}

	/* Remove any leading zero words from the result.  */
	if( mod_shift_cnt )
	    FUNC16( rp, rp, rsize, mod_shift_cnt);
	FUNC2 (rp, rsize);

	FUNC15( &karactx );
    }

    if( negative_result && rsize ) {
	if( mod_shift_cnt )
	    FUNC16( mp, mp, msize, mod_shift_cnt);
	FUNC17( rp, mp, msize, rp, rsize);
	rsize = msize;
	rsign = msign;
	FUNC2(rp, rsize);
    }
    res->nlimbs = rsize;
    res->sign = rsign;

 leave:
    rc = 0;
 enomem:
    if( assign_rp ) FUNC6( res, rp, size );
    if( mp_marker ) FUNC7( mp_marker );
    if( bp_marker ) FUNC7( bp_marker );
    if( ep_marker ) FUNC7( ep_marker );
    if( xp_marker ) FUNC7( xp_marker );
    if( tspace )    FUNC7( tspace );
    return rc;
}
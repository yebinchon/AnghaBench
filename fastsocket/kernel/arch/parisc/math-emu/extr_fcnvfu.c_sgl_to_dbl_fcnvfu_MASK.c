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
typedef  unsigned int sgl_floating_point ;
typedef  int /*<<< orphan*/  dbl_unsigned ;
typedef  scalar_t__ boolean ;

/* Variables and functions */
 int DBL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int) ; 
 scalar_t__ FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC7 () ; 
 int SGL_BIAS ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int FUNC11 (unsigned int) ; 
 scalar_t__ FUNC12 (unsigned int,int) ; 
 scalar_t__ FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,int) ; 
 scalar_t__ FUNC16 (unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 
 scalar_t__ TRUE ; 

int
FUNC19(
		    sgl_floating_point *srcptr,
		    unsigned int *nullptr,
		    dbl_unsigned *dstptr,
		    unsigned int *status)
{
	register int src_exponent;
	register unsigned int src, resultp1, resultp2;
	register boolean inexact = FALSE;

	src = *srcptr;
	src_exponent = FUNC11(src) - SGL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > DBL_FX_MAX_EXP + 1) {
		if (FUNC16(src)) {
			resultp1 = resultp2 = 0;
		} else {
			resultp1 = resultp2 = 0xffffffff;
		}
		if (FUNC6()) {
			return(INVALIDEXCEPTION);
		}
		FUNC9();
    		FUNC0(resultp1,resultp2,dstptr);
		return(NOEXCEPTION);
	}
	/*
	 * Generate result
	 */
	if (src_exponent >= 0) {
		/* 
		 * Check sign.
		 * If negative, trap unimplemented.
		 */
		if (FUNC16(src)) {
			resultp1 = resultp2 = 0;
			if (FUNC6()) {
				return(INVALIDEXCEPTION);
			}
			FUNC9();
    			FUNC0(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
		FUNC10(src);
		FUNC1(src,src_exponent,resultp1,resultp2);

		/* check for inexact */
		if (FUNC12(src,src_exponent)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC7()) {
			case ROUNDPLUS:
				FUNC2(resultp1,resultp2);
				break;
			case ROUNDMINUS: /* never negative */
				break;
			case ROUNDNEAREST:
				if (FUNC15(src,src_exponent) &&
				    (FUNC17(src,src_exponent) || 
				     FUNC3(resultp2))) {
					FUNC2(resultp1,resultp2);
				}
				break;
			}
		}
	} else {
		FUNC4(resultp1,resultp2);

		/* check for inexact */
		if (FUNC13(src)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC7()) {
			case ROUNDPLUS:
				if (FUNC18(src)) {
					FUNC2(resultp1,resultp2);
				}
				break;
			case ROUNDMINUS:
				if (FUNC16(src)) {
					resultp1 = resultp2 = 0;
					if (FUNC6()) {
						return(INVALIDEXCEPTION);
					}
					FUNC9();
					inexact = FALSE;
				}
				break;
			case ROUNDNEAREST:
				if (src_exponent == -1 &&
				    FUNC14(src)) {
					if (FUNC16(src)) {
						resultp1 = 0;
						resultp2 = 0;
						if (FUNC6()) {
							return(INVALIDEXCEPTION);
						}
						FUNC9();
						inexact = FALSE;
					}
					else FUNC2(resultp1,resultp2);
				}
			}
		}
	}
	FUNC0(resultp1,resultp2,dstptr);
	if (inexact) {
		if (FUNC5()) return(INEXACTEXCEPTION);
		else FUNC8();
	}
	return(NOEXCEPTION);
}
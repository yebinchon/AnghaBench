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
typedef  int /*<<< orphan*/  dbl_unsigned ;
typedef  int /*<<< orphan*/  dbl_floating_point ;
typedef  scalar_t__ boolean ;

/* Variables and functions */
 int DBL_BIAS ; 
 int DBL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,unsigned int,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,unsigned int) ; 
 scalar_t__ FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ TRUE ; 

int
FUNC20 (dbl_floating_point * srcptr, unsigned int *nullptr,
		   dbl_unsigned * dstptr, unsigned int *status)
{
	register int src_exponent;
	register unsigned int srcp1, srcp2, resultp1, resultp2;
	register boolean inexact = FALSE;

	FUNC1(srcptr,srcp1,srcp2);
	src_exponent = FUNC2(srcp1) - DBL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > DBL_FX_MAX_EXP + 1) {
		if (FUNC7(srcp1)) {
			resultp1 = resultp2 = 0;
		} else {
			resultp1 = resultp2 = 0xffffffff;
		}
		if (FUNC16()) {
			return(INVALIDEXCEPTION);
		}
		FUNC19();
    		FUNC10(resultp1,resultp2,dstptr);
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
		if (FUNC7(srcp1)) {
			resultp1 = resultp2 = 0;
			if (FUNC16()) {
				return(INVALIDEXCEPTION);
			}
			FUNC19();
    			FUNC10(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
		FUNC0(srcp1);
		FUNC11(srcp1,srcp2,src_exponent,resultp1,
		  resultp2);

		/* check for inexact */
		if (FUNC3(srcp1,srcp2,src_exponent)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC17()) {
			case ROUNDPLUS:
				FUNC12(resultp1,resultp2);
				break;
			case ROUNDMINUS: /* never negative */
				break;
			case ROUNDNEAREST:
				if(FUNC6(srcp1,srcp2,src_exponent))
				  if(FUNC8(srcp1,srcp2,src_exponent) || 
				     FUNC13(resultp2))
					FUNC12(resultp1,resultp2);
			} 
		}
	} else {
		FUNC14(resultp1,resultp2);

		/* check for inexact */
		if (FUNC4(srcp1,srcp2)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC17()) {
			case ROUNDPLUS:
				if (FUNC9(srcp1)) {
					FUNC12(resultp1,resultp2);
				}
				break;
			case ROUNDMINUS:
				if (FUNC7(srcp1)) {
					resultp1 = resultp2 = 0;
					if (FUNC16()) {
						return(INVALIDEXCEPTION);
					}
					FUNC19();
					inexact = FALSE;
				}
				break;
			case ROUNDNEAREST:
				if (src_exponent == -1 &&
				    FUNC5(srcp1,srcp2))
					if (FUNC9(srcp1)) {
						FUNC12(resultp1,resultp2);
					} else {
						resultp1 = 0;
						resultp2 = 0;
						if (FUNC16()) {
							return(INVALIDEXCEPTION);
						}
						FUNC19();
						inexact = FALSE;
					}
			}
		}
	}
	FUNC10(resultp1,resultp2,dstptr);
	if (inexact) {
		if (FUNC15()) return(INEXACTEXCEPTION);
		else FUNC18();
	}
	return(NOEXCEPTION);
}
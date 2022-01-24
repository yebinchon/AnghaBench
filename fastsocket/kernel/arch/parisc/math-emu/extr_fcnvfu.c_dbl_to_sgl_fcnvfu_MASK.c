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
typedef  int /*<<< orphan*/  dbl_floating_point ;
typedef  scalar_t__ boolean ;

/* Variables and functions */
 int DBL_BIAS ; 
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
 scalar_t__ FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC12 () ; 
 int SGL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,unsigned int,int,unsigned int) ; 
 scalar_t__ TRUE ; 

int
FUNC16 (dbl_floating_point * srcptr, unsigned int *nullptr,
		   unsigned int *dstptr, unsigned int *status)
{
	register unsigned int srcp1, srcp2, result;
	register int src_exponent;
	register boolean inexact = FALSE;

	FUNC1(srcptr,srcp1,srcp2);
	src_exponent = FUNC2(srcp1) - DBL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > SGL_FX_MAX_EXP + 1) {
		if (FUNC7(srcp1)) {
			result = 0;
		} else {
			result = 0xffffffff;
		}
		if (FUNC11()) {
			return(INVALIDEXCEPTION);
		}
		FUNC14();
		*dstptr = result;
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
			result = 0;
			if (FUNC11()) {
				return(INVALIDEXCEPTION);
			}
			FUNC14();
			*dstptr = result;
			return(NOEXCEPTION);
		}
		FUNC0(srcp1);
		FUNC15(srcp1,srcp2,src_exponent,result);

		/* check for inexact */
		if (FUNC3(srcp1,srcp2,src_exponent)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC12()) {
			case ROUNDPLUS:
			     result++;
			     break;
			case ROUNDMINUS: /* never negative */
			     break;
			case ROUNDNEAREST:
			     if(FUNC6(srcp1,srcp2,src_exponent) &&
				(FUNC8(srcp1,srcp2,src_exponent)||
				 result&1))
				   result++;
			     break;
			}
			/* check for overflow */
			if (result == 0) {
				result = 0xffffffff;
				if (FUNC11()) {
					return(INVALIDEXCEPTION);
				}
				FUNC14();
				*dstptr = result;
				return(NOEXCEPTION);
			}
		}
	} else {
		result = 0;

		/* check for inexact */
		if (FUNC4(srcp1,srcp2)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC12()) {
			case ROUNDPLUS:
				if (FUNC9(srcp1)) result++;
				break;
			case ROUNDMINUS:
				if (FUNC7(srcp1)) {
					result = 0;
					if (FUNC11()) {
						return(INVALIDEXCEPTION);
					}
					FUNC14();
					inexact = FALSE;
				}
				break;
			case ROUNDNEAREST:
				if (src_exponent == -1 &&
				    FUNC5(srcp1,srcp2))
					if (FUNC7(srcp1)) {
						result = 0;
						if (FUNC11()) {
							return(INVALIDEXCEPTION);
						}
						FUNC14();
						inexact = FALSE;
					}
					else result++;
			}
		}
	}
	*dstptr = result;
	if (inexact) {
		if (FUNC10()) return(INEXACTEXCEPTION);
		else FUNC13();
	}
	return(NOEXCEPTION);
}
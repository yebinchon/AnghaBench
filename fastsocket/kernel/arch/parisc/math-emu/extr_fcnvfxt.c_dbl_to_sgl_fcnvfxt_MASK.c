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

/* Variables and functions */
 int DBL_BIAS ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC5 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int NOEXCEPTION ; 
 int SGL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(
			dbl_floating_point *srcptr,
			unsigned int *nullptr,
			int *dstptr,
			unsigned int *status)
{
	register unsigned int srcp1, srcp2, tempp1, tempp2;
	register int src_exponent, result;

	FUNC2(srcptr,srcp1,srcp2);
	src_exponent = FUNC3(srcp1) - DBL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > SGL_FX_MAX_EXP) {
		/* check for MININT */
		if (FUNC7(src_exponent,srcp1,srcp2)) {
                        if (FUNC8(srcp1)) result = 0x7fffffff;
                        else result = 0x80000000; 

	                if (FUNC11()) {
                            return(INVALIDEXCEPTION);
                        }
                        FUNC13();
			*dstptr = result;
			return(NOEXCEPTION);
		}
	}
	/*
	 * Generate result
	 */
	if (src_exponent >= 0) {
		tempp1 = srcp1;
		tempp2 = srcp2;
		FUNC1(tempp1);
		FUNC9(tempp1,tempp2,src_exponent);
		if (FUNC6(srcp1) && (src_exponent <= SGL_FX_MAX_EXP))
			result = -FUNC0(tempp1);
		else result = FUNC0(tempp1);
		*dstptr = result;

		/* check for inexact */
		if (FUNC4(srcp1,srcp2,src_exponent)) {
			if (FUNC10()) return(INEXACTEXCEPTION);
			else FUNC12();
		}
	}
	else {
		*dstptr = 0;

		/* check for inexact */
		if (FUNC5(srcp1,srcp2)) {
			if (FUNC10()) return(INEXACTEXCEPTION);
			else FUNC12();
		}
	}
	return(NOEXCEPTION);
}
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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int NOEXCEPTION ; 
 int SGL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned int,int,unsigned int) ; 

int
FUNC11 (dbl_floating_point * srcptr, unsigned int *nullptr,
		    unsigned int *dstptr, unsigned int *status)
{
	register unsigned int srcp1, srcp2, result;
	register int src_exponent;

	FUNC1(srcptr,srcp1,srcp2);
	src_exponent = FUNC2(srcp1) - DBL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > SGL_FX_MAX_EXP + 1) {
		if (FUNC5(srcp1)) {
			result = 0;
		} else {
			result = 0xffffffff;
		}
		if (FUNC7()) {
			return(INVALIDEXCEPTION);
		}
		FUNC9();
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
		if (FUNC5(srcp1)) {
			result = 0;
			if (FUNC7()) {
				return(INVALIDEXCEPTION);
			}
			FUNC9();
			*dstptr = result;
			return(NOEXCEPTION);
		}
		FUNC0(srcp1);
		FUNC10(srcp1,srcp2,src_exponent,result);
		*dstptr = result;

		/* check for inexact */
		if (FUNC3(srcp1,srcp2,src_exponent)) {
			if (FUNC6()) return(INEXACTEXCEPTION);
			else FUNC8();
		}
	}
	else {
		*dstptr = 0;

		/* check for inexact */
		if (FUNC4(srcp1,srcp2)) {
			if (FUNC6()) return(INEXACTEXCEPTION);
			else FUNC8();
		}
	}
	return(NOEXCEPTION);
}
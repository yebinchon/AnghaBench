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

/* Variables and functions */
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int NOEXCEPTION ; 
 int SGL_BIAS ; 
 int SGL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int,int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int,unsigned int) ; 

int
FUNC10 (sgl_floating_point * srcptr, unsigned int *nullptr,
		    unsigned int *dstptr, unsigned int *status)
{
	register unsigned int src, result;
	register int src_exponent;

	src = *srcptr;
	src_exponent = FUNC5(src) - SGL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > SGL_FX_MAX_EXP + 1) {
		if (FUNC8(src)) {
			result = 0;
		} else {
			result = 0xffffffff;
		}
		if (FUNC1()) {
			return(INVALIDEXCEPTION);
		}
		FUNC3();
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
		if (FUNC8(src)) {
			result = 0;
			if (FUNC1()) {
				return(INVALIDEXCEPTION);
			}
			FUNC3();
			*dstptr = result;
			return(NOEXCEPTION);
		}
		FUNC4(src);
		FUNC9(src,src_exponent,result);
		*dstptr = result;

		/* check for inexact */
		if (FUNC6(src,src_exponent)) {
			if (FUNC0()) return(INEXACTEXCEPTION);
			else FUNC2();
		}
	}
	else {
		*dstptr = 0;

		/* check for inexact */
		if (FUNC7(src)) {
			if (FUNC0()) return(INEXACTEXCEPTION);
			else FUNC2();
		}
	}
	return(NOEXCEPTION);
}
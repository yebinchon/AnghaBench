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
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int NOEXCEPTION ; 
 int SGL_BIAS ; 
 int SGL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int,int) ; 
 scalar_t__ FUNC9 (unsigned int) ; 
 scalar_t__ FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (unsigned int) ; 
 scalar_t__ FUNC12 (unsigned int) ; 

int
FUNC13(
		    sgl_floating_point *srcptr,
		    unsigned int *nullptr,
		    int *dstptr,
		    unsigned int *status)
{
	register unsigned int src, temp;
	register int src_exponent, result;

	src = *srcptr;
	src_exponent = FUNC7(src) - SGL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > SGL_FX_MAX_EXP) {
		/* check for MININT */
		if ((src_exponent > SGL_FX_MAX_EXP + 1) || 
		FUNC10(src) || FUNC12(src)) {
                        if (FUNC12(src)) result = 0x7fffffff;
                        else result = 0x80000000; 

	                if (FUNC2()) {
                            return(INVALIDEXCEPTION);
                        }
                        FUNC4();
			*dstptr = result;
			return(NOEXCEPTION);
		}
	}
	/*
	 * Generate result
	 */
	if (src_exponent >= 0) {
		temp = src;
		FUNC6(temp);
		FUNC0(temp,src_exponent);
		if (FUNC11(src))  result = -FUNC5(temp);
		else result = FUNC5(temp);
		*dstptr = result;

		/* check for inexact */
		if (FUNC8(src,src_exponent)) {
			if (FUNC1()) return(INEXACTEXCEPTION);
			else FUNC3();
		}
	}
	else {
		*dstptr = 0;

		/* check for inexact */
		if (FUNC9(src)) {
			if (FUNC1()) return(INEXACTEXCEPTION);
			else FUNC3();
		}
	}
	return(NOEXCEPTION);
}
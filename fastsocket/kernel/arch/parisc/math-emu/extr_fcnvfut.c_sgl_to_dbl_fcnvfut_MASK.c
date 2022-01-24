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

/* Variables and functions */
 int DBL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int NOEXCEPTION ; 
 int SGL_BIAS ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (unsigned int,int) ; 
 scalar_t__ FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (unsigned int) ; 

int
FUNC12 (sgl_floating_point * srcptr, unsigned int *nullptr,
		    dbl_unsigned * dstptr, unsigned int *status)
{
	register int src_exponent;
	register unsigned int src, resultp1, resultp2;

	src = *srcptr;
	src_exponent = FUNC8(src) - SGL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > DBL_FX_MAX_EXP + 1) {
		if (FUNC11(src)) {
			resultp1 = resultp2 = 0;
		} else {
			resultp1 = resultp2 = 0xffffffff;
		}
		if (FUNC4()) {
			return(INVALIDEXCEPTION);
		}
		FUNC6();
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
		if (FUNC11(src)) {
			resultp1 = resultp2 = 0;
			if (FUNC4()) {
				return(INVALIDEXCEPTION);
			}
			FUNC6();
    			FUNC0(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
		FUNC7(src);
		FUNC1(src,src_exponent,resultp1,resultp2);
		FUNC0(resultp1,resultp2,dstptr);

		/* check for inexact */
		if (FUNC9(src,src_exponent)) {
			if (FUNC3()) return(INEXACTEXCEPTION);
			else FUNC5();
		}
	}
	else {
		FUNC2(resultp1,resultp2);
		FUNC0(resultp1,resultp2,dstptr);

		/* check for inexact */
		if (FUNC10(src)) {
			if (FUNC3()) return(INEXACTEXCEPTION);
			else FUNC5();
		}
	}
	return(NOEXCEPTION);
}
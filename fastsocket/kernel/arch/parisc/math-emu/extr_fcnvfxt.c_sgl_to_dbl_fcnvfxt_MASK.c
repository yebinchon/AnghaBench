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
typedef  int /*<<< orphan*/  dbl_integer ;

/* Variables and functions */
 int DBL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int NOEXCEPTION ; 
 int SGL_BIAS ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (unsigned int,int) ; 
 scalar_t__ FUNC12 (unsigned int) ; 
 scalar_t__ FUNC13 (unsigned int) ; 
 scalar_t__ FUNC14 (unsigned int) ; 
 scalar_t__ FUNC15 (unsigned int) ; 

int
FUNC16(
		    sgl_floating_point *srcptr,
		    unsigned int *nullptr,
		    dbl_integer *dstptr,
		    unsigned int *status)
{
	register int src_exponent, resultp1;
	register unsigned int src, temp, resultp2;

	src = *srcptr;
	src_exponent = FUNC10(src) - SGL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > DBL_FX_MAX_EXP) {
		/* check for MININT */
		if ((src_exponent > DBL_FX_MAX_EXP + 1) || 
		FUNC13(src) || FUNC15(src)) {
                        if (FUNC15(src)) {
                              resultp1 = 0x7fffffff;
			      resultp2 = 0xffffffff;
			}
                        else {
			    resultp1 = 0x80000000; 
			    resultp2 = 0;
			}
	                if (FUNC6()) {
                            return(INVALIDEXCEPTION);
                        }
                        FUNC8();
    		        FUNC0(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
		FUNC2(resultp1,resultp2);
		FUNC0(resultp1,resultp2,dstptr);
		return(NOEXCEPTION);
	}
	/*
	 * Generate result
	 */
	if (src_exponent >= 0) {
		temp = src;
		FUNC9(temp);
		FUNC1(temp,src_exponent,resultp1,resultp2);
		if (FUNC14(src)) {
			FUNC3(resultp1,resultp2);
		}
		FUNC0(resultp1,resultp2,dstptr);

		/* check for inexact */
		if (FUNC11(src,src_exponent)) {
			if (FUNC5()) return(INEXACTEXCEPTION);
			else FUNC7();
		}
	}
	else {
		FUNC4(resultp1,resultp2);
		FUNC0(resultp1,resultp2,dstptr);

		/* check for inexact */
		if (FUNC12(src)) {
			if (FUNC5()) return(INEXACTEXCEPTION);
			else FUNC7();
		}
	}
	return(NOEXCEPTION);
}
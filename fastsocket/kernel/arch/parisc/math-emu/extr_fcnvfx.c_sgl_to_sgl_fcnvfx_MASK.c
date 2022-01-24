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
typedef  scalar_t__ boolean ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC3 () ; 
 int SGL_BIAS ; 
 int SGL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (unsigned int,int) ; 
 scalar_t__ FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,int) ; 
 scalar_t__ FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,int) ; 
 scalar_t__ FUNC16 (unsigned int) ; 
 scalar_t__ TRUE ; 

int
FUNC17(
		    sgl_floating_point *srcptr,
		    sgl_floating_point *nullptr,
		    int *dstptr,
		    sgl_floating_point *status)
{
	register unsigned int src, temp;
	register int src_exponent, result;
	register boolean inexact = FALSE;

	src = *srcptr;
	src_exponent = FUNC8(src) - SGL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > SGL_FX_MAX_EXP) {
		/* check for MININT */
		if ((src_exponent > SGL_FX_MAX_EXP + 1) || 
		FUNC11(src) || FUNC16(src)) {
                        if (FUNC16(src)) result = 0x7fffffff;
                        else result = 0x80000000; 

	                if (FUNC2()) {
                            return(INVALIDEXCEPTION);
                        }
                        FUNC5();
			*dstptr = result;
			return(NOEXCEPTION);
       		}
	}
	/*
	 * Generate result
	 */
	if (src_exponent >= 0) {
		temp = src;
		FUNC7(temp);
		FUNC0(temp,src_exponent);
		if (FUNC14(src))  result = -FUNC6(temp);
		else result = FUNC6(temp);

		/* check for inexact */
		if (FUNC9(src,src_exponent)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC3()) {
			case ROUNDPLUS:
			     if (FUNC16(src)) result++;
			     break;
			case ROUNDMINUS:
			     if (FUNC14(src)) result--;
			     break;
			case ROUNDNEAREST:
			     if (FUNC13(src,src_exponent)) {
			        if (FUNC15(src,src_exponent) 
				|| (FUNC12(temp)))
			           if (FUNC16(src)) result++;
			           else result--;
			     }
			} 
		}
	}
	else {
		result = 0;

		/* check for inexact */
		if (FUNC10(src)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC3()) {
			case ROUNDPLUS:
			     if (FUNC16(src)) result++;
			     break;
			case ROUNDMINUS:
			     if (FUNC14(src)) result--;
			     break;
			case ROUNDNEAREST:
			     if (src_exponent == -1)
			        if (FUNC11(src))
			           if (FUNC16(src)) result++;
			           else result--;
			} 
		}
	}
	*dstptr = result;
	if (inexact) {
		if (FUNC1()) return(INEXACTEXCEPTION);
		else FUNC4();
	}
	return(NOEXCEPTION);
}
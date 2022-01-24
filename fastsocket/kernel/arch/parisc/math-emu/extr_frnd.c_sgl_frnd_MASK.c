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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC2 () ; 
 int SGL_BIAS ; 
 int SGL_INFINITY_EXPONENT ; 
 int SGL_P ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int,int) ; 
 scalar_t__ FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 scalar_t__ FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC19 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (unsigned int) ; 
 scalar_t__ TRUE ; 

int
FUNC23(sgl_floating_point *srcptr,
	unsigned int *nullptr,
	sgl_floating_point *dstptr,
	unsigned int *status)
{
	register unsigned int src, result;
	register int src_exponent;
	register boolean inexact = FALSE;

	src = *srcptr;
        /*
         * check source operand for NaN or infinity
         */
        if ((src_exponent = FUNC6(src)) == SGL_INFINITY_EXPONENT) {
                /*
                 * is signaling NaN?
                 */
                if (FUNC15(src)) {
                        /* trap if INVALIDTRAP enabled */
                        if (FUNC1()) return(INVALIDEXCEPTION);
                        /* make NaN quiet */
                        FUNC4();
                        FUNC21(src);
                }
                /*
                 * return quiet NaN or infinity
                 */
                *dstptr = src;
                return(NOEXCEPTION);
        }
	/* 
	 * Need to round?
	 */
	if ((src_exponent -= SGL_BIAS) >= SGL_P - 1) {
		*dstptr = src;
		return(NOEXCEPTION);
	}
	/*
	 * Generate result
	 */
	if (src_exponent >= 0) {
		FUNC5(src);
		result = src;
		FUNC19(result,(SGL_P-1) - (src_exponent));
		/* check for inexact */
		if (FUNC8(src,src_exponent)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC2()) {
			case ROUNDPLUS:
			     if (FUNC17(src)) FUNC7(result);
			     break;
			case ROUNDMINUS:
			     if (FUNC14(src)) FUNC7(result);
			     break;
			case ROUNDNEAREST:
			     if (FUNC13(src,src_exponent))
			        if (FUNC16(src,src_exponent) 
				|| (FUNC12(result))) 
					FUNC7(result);
			} 
		}
		FUNC18(result,(SGL_P-1) - (src_exponent));
		if (FUNC11(result)) 
			FUNC20(result,src_exponent + (SGL_BIAS+1));
		else FUNC20(result,src_exponent + SGL_BIAS);
	}
	else {
		result = src;  		/* set sign */
		FUNC22(result);
		/* check for inexact */
		if (FUNC9(src)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC2()) {
			case ROUNDPLUS:
			     if (FUNC17(src)) 
				FUNC20(result,SGL_BIAS);
			     break;
			case ROUNDMINUS:
			     if (FUNC14(src)) 
				FUNC20(result,SGL_BIAS);
			     break;
			case ROUNDNEAREST:
			     if (src_exponent == -1)
			        if (FUNC10(src))
				   FUNC20(result,SGL_BIAS);
			} 
		}
	}
	*dstptr = result;
	if (inexact) {
		if (FUNC0()) return(INEXACTEXCEPTION);
		else FUNC3();
	}
	return(NOEXCEPTION);
}
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
typedef  int boolean ;

/* Variables and functions */
 int FALSE ; 
 unsigned int INEXACTEXCEPTION ; 
 unsigned int INVALIDEXCEPTION ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 unsigned int NOEXCEPTION ; 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC2 () ; 
 int SGL_BIAS ; 
 int SGL_INFINITY_EXPONENT ; 
 int SGL_P ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int FUNC9 (unsigned int) ; 
 int FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 scalar_t__ FUNC12 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC13 (unsigned int) ; 
 scalar_t__ FUNC14 (unsigned int) ; 
 scalar_t__ FUNC15 (unsigned int) ; 
 scalar_t__ FUNC16 (unsigned int) ; 
 scalar_t__ FUNC17 (unsigned int) ; 
 scalar_t__ FUNC18 (unsigned int) ; 
 scalar_t__ FUNC19 (unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int) ; 
 int FUNC21 (unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC24 (unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC26 (unsigned int) ; 
 int /*<<< orphan*/  FUNC27 (unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (unsigned int,unsigned int,unsigned int) ; 

unsigned int
FUNC29(
    sgl_floating_point *srcptr,
    unsigned int *nullptr,
    sgl_floating_point *dstptr,
    unsigned int *status)
{
	register unsigned int src, result;
	register int src_exponent;
	register unsigned int newbit, sum;
	register boolean guardbit = FALSE, even_exponent;

	src = *srcptr;
        /*
         * check source operand for NaN or infinity
         */
        if ((src_exponent = FUNC9(src)) == SGL_INFINITY_EXPONENT) {
                /*
                 * is signaling NaN?
                 */
                if (FUNC17(src)) {
                        /* trap if INVALIDTRAP enabled */
                        if (FUNC1()) return(INVALIDEXCEPTION);
                        /* make NaN quiet */
                        FUNC4();
                        FUNC26(src);
                }
                /*
                 * Return quiet NaN or positive infinity.
		 *  Fall through to negative test if negative infinity.
                 */
		if (FUNC19(src) || FUNC14(src)) {
                	*dstptr = src;
                	return(NOEXCEPTION);
		}
        }

        /*
         * check for zero source operand
         */
	if (FUNC18(src)) {
		*dstptr = src;
		return(NOEXCEPTION);
	}

        /*
         * check for negative source operand 
         */
	if (FUNC16(src)) {
		/* trap if INVALIDTRAP enabled */
		if (FUNC1()) return(INVALIDEXCEPTION);
		/* make NaN quiet */
		FUNC4();
		FUNC22(src);
		*dstptr = src;
		return(NOEXCEPTION);
	}

	/*
	 * Generate result
	 */
	if (src_exponent > 0) {
		even_exponent = FUNC10(src);
		FUNC8(src);
	}
	else {
		/* normalize operand */
		FUNC7(src);
		src_exponent++;
		FUNC23(src,src_exponent);
		even_exponent = src_exponent & 1;
	}
	if (even_exponent) {
		/* exponent is even */
		/* Add comment here.  Explain why odd exponent needs correction */
		FUNC20(src);
	}
	/*
	 * Add comment here.  Explain following algorithm.
	 * 
	 * Trust me, it works.
	 *
	 */
	FUNC27(result);
	newbit = 1 << SGL_P;
	while (newbit && FUNC13(src)) {
		FUNC5(result,newbit,sum);
		if(sum <= FUNC6(src)) {
			/* update result */
			FUNC5(result,(newbit<<1),result);
			FUNC28(src,sum,src);
		}
		FUNC24(newbit);
		FUNC20(src);
	}
	/* correct exponent for pre-shift */
	if (even_exponent) {
		FUNC24(result);
	}

	/* check for inexact */
	if (FUNC13(src)) {
		if (!even_exponent && FUNC12(result,src)) 
			FUNC11(result);
		guardbit = FUNC21(result);
		FUNC24(result);

		/*  now round result  */
		switch (FUNC2()) {
		case ROUNDPLUS:
		     FUNC11(result);
		     break;
		case ROUNDNEAREST:
		     /* stickybit is always true, so guardbit 
		      * is enough to determine rounding */
		     if (guardbit) {
			FUNC11(result);
		     }
		     break;
		}
		/* increment result exponent by 1 if mantissa overflowed */
		if (FUNC15(result)) src_exponent+=2;

		if (FUNC0()) {
			FUNC25(result,
			 ((src_exponent-SGL_BIAS)>>1)+SGL_BIAS);
			*dstptr = result;
			return(INEXACTEXCEPTION);
		}
		else FUNC3();
	}
	else {
		FUNC24(result);
	}
	FUNC25(result,((src_exponent-SGL_BIAS)>>1)+SGL_BIAS);
	*dstptr = result;
	return(NOEXCEPTION);
}
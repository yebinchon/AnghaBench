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
 int DBL_INFINITY_EXPONENT ; 
 int DBL_P ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 scalar_t__ FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (unsigned int,unsigned int) ; 
 scalar_t__ FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC20 () ; 
 scalar_t__ FUNC21 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 scalar_t__ TRUE ; 

int
FUNC25(
	dbl_floating_point *srcptr,
	unsigned int *nullptr,
	dbl_floating_point *dstptr,
	unsigned int *status)
{
	register unsigned int srcp1, srcp2, resultp1, resultp2;
	register int src_exponent;
	register boolean inexact = FALSE;

	FUNC1(srcptr,srcp1,srcp2);
        /*
         * check source operand for NaN or infinity
         */
        if ((src_exponent = FUNC3(srcp1)) == DBL_INFINITY_EXPONENT) {
                /*
                 * is signaling NaN?
                 */
                if (FUNC12(srcp1)) {
                        /* trap if INVALIDTRAP enabled */
                        if (FUNC21()) return(INVALIDEXCEPTION);
                        /* make NaN quiet */
                        FUNC24();
                        FUNC18(srcp1);
                }
                /*
                 * return quiet NaN or infinity
                 */
                FUNC2(srcp1,srcp2,dstptr);
                return(NOEXCEPTION);
        }
	/* 
	 * Need to round?
	 */
	if ((src_exponent -= DBL_BIAS) >= DBL_P - 1) {
		FUNC2(srcp1,srcp2,dstptr);
		return(NOEXCEPTION);
	}
	/*
	 * Generate result
	 */
	if (src_exponent >= 0) {
		FUNC0(srcp1);
		resultp1 = srcp1;
		resultp2 = srcp2;
		FUNC16(resultp1,resultp2,(DBL_P-1) - (src_exponent));
		/* check for inexact */
		if (FUNC5(srcp1,srcp2,src_exponent)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC22()) {
			case ROUNDPLUS:
			     if (FUNC14(srcp1)) 
				FUNC4(resultp1,resultp2);
			     break;
			case ROUNDMINUS:
			     if (FUNC11(srcp1)) 
				FUNC4(resultp1,resultp2);
			     break;
			case ROUNDNEAREST:
			     if (FUNC10(srcp1,srcp2,src_exponent))
			      if (FUNC13(srcp1,srcp2,src_exponent) 
				  || (FUNC9(resultp2))) 
					FUNC4(resultp1,resultp2);
			} 
		}
		FUNC15(resultp1,resultp2,(DBL_P-1) - (src_exponent));
		if (FUNC8(resultp1))
			FUNC17(resultp1,src_exponent + (DBL_BIAS+1));
		else FUNC17(resultp1,src_exponent + DBL_BIAS);
	}
	else {
		resultp1 = srcp1;  /* set sign */
		FUNC19(resultp1,resultp2);
		/* check for inexact */
		if (FUNC6(srcp1,srcp2)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC22()) {
			case ROUNDPLUS:
			     if (FUNC14(srcp1)) 
				FUNC17(resultp1,DBL_BIAS);
			     break;
			case ROUNDMINUS:
			     if (FUNC11(srcp1)) 
				FUNC17(resultp1,DBL_BIAS);
			     break;
			case ROUNDNEAREST:
			     if (src_exponent == -1)
			        if (FUNC7(srcp1,srcp2))
				   FUNC17(resultp1,DBL_BIAS);
			} 
		}
	}
	FUNC2(resultp1,resultp2,dstptr);
	if (inexact) {
		if (FUNC20()) return(INEXACTEXCEPTION);
		else FUNC23();
	}
	return(NOEXCEPTION);
}
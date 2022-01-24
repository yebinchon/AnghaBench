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
typedef  int boolean ;

/* Variables and functions */
 int DBL_BIAS ; 
 int DBL_INFINITY_EXPONENT ; 
 int DBL_P ; 
 int DIVISIONBYZEROEXCEPTION ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned int,int,int,int,int) ; 
 int FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC12 (unsigned int) ; 
 scalar_t__ FUNC13 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC14 (unsigned int) ; 
 scalar_t__ FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 
 scalar_t__ FUNC19 (unsigned int) ; 
 scalar_t__ FUNC20 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC21 (unsigned int) ; 
 scalar_t__ FUNC22 (unsigned int) ; 
 scalar_t__ FUNC23 (unsigned int) ; 
 scalar_t__ FUNC24 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC25 (unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC27 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC29 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC30 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC31 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC32 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC33 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC34 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC35 (unsigned int) ; 
 int /*<<< orphan*/  FUNC36 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC37 (unsigned int) ; 
 int /*<<< orphan*/  FUNC38 (unsigned int) ; 
 int /*<<< orphan*/  FUNC39 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC40 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC42 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC43 (unsigned int) ; 
 int FUNC44 (unsigned int) ; 
 int FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC45 () ; 
 scalar_t__ FUNC46 () ; 
 scalar_t__ FUNC47 () ; 
 scalar_t__ FUNC48 () ; 
 scalar_t__ FUNC49 () ; 
 int NOEXCEPTION ; 
 int OVERFLOWEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC50 () ; 
 int /*<<< orphan*/  FUNC51 () ; 
 int /*<<< orphan*/  FUNC52 () ; 
 int /*<<< orphan*/  FUNC53 () ; 
 int /*<<< orphan*/  FUNC54 () ; 
 int /*<<< orphan*/  FUNC55 () ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC56 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC57 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int UNDERFLOWEXCEPTION ; 
 int /*<<< orphan*/  ovfl ; 
 int /*<<< orphan*/  unfl ; 

int
FUNC58 (dbl_floating_point * srcptr1, dbl_floating_point * srcptr2,
	  dbl_floating_point * dstptr, unsigned int *status)
{
	register unsigned int opnd1p1, opnd1p2, opnd2p1, opnd2p2;
	register unsigned int opnd3p1, opnd3p2, resultp1, resultp2;
	register int dest_exponent, count;
	register boolean inexact = FALSE, guardbit = FALSE, stickybit = FALSE;
	boolean is_tiny;

	FUNC4(srcptr1,opnd1p1,opnd1p2);
	FUNC4(srcptr2,opnd2p1,opnd2p2);
	/* 
	 * set sign bit of result 
	 */
	if (FUNC44(opnd1p1) ^ FUNC44(opnd2p1)) 
		FUNC37(resultp1);  
	else FUNC43(resultp1);
	/*
	 * check first operand for NaN's or infinity
	 */
	if (FUNC12(opnd1p1)) {
		if (FUNC24(opnd1p1,opnd1p2)) {
			if (FUNC13(opnd2p1,opnd2p2)) {
				if (FUNC11(opnd2p1,opnd2p2)) {
					/* 
					 * invalid since both operands 
					 * are infinity 
					 */
					if (FUNC47())
                                		return(INVALIDEXCEPTION);
                                	FUNC53();
                                	FUNC30(resultp1,resultp2);
					FUNC5(resultp1,resultp2,dstptr);
					return(NOEXCEPTION);
				}
				/*
			 	 * return infinity
			 	 */
				FUNC36(resultp1,resultp2);
				FUNC5(resultp1,resultp2,dstptr);
				return(NOEXCEPTION);
			}
		}
		else {
                	/*
                 	 * is NaN; signaling or quiet?
                 	 */
                	if (FUNC19(opnd1p1)) {
                        	/* trap if INVALIDTRAP enabled */
                        	if (FUNC47())
                            		return(INVALIDEXCEPTION);
                        	/* make NaN quiet */
                        	FUNC53();
                        	FUNC35(opnd1p1);
                	}
			/* 
			 * is second operand a signaling NaN? 
			 */
			else if (FUNC10(opnd2p1)) {
                        	/* trap if INVALIDTRAP enabled */
                        	if (FUNC47())
                            		return(INVALIDEXCEPTION);
                        	/* make NaN quiet */
                        	FUNC53();
                        	FUNC35(opnd2p1);
				FUNC5(opnd2p1,opnd2p2,dstptr);
                		return(NOEXCEPTION);
			}
                	/*
                 	 * return quiet NaN
                 	 */
			FUNC5(opnd1p1,opnd1p2,dstptr);
                	return(NOEXCEPTION);
		}
	}
	/*
	 * check second operand for NaN's or infinity
	 */
	if (FUNC12(opnd2p1)) {
		if (FUNC24(opnd2p1,opnd2p2)) {
			/*
			 * return zero
			 */
			FUNC42(resultp1,resultp2);
			FUNC5(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
                /*
                 * is NaN; signaling or quiet?
                 */
                if (FUNC19(opnd2p1)) {
                        /* trap if INVALIDTRAP enabled */
                        if (FUNC47()) return(INVALIDEXCEPTION);
                        /* make NaN quiet */
                        FUNC53();
                        FUNC35(opnd2p1);
                }
                /*
                 * return quiet NaN
                 */
		FUNC5(opnd2p1,opnd2p2,dstptr);
                return(NOEXCEPTION);
	}
        /*
         * check for division by zero
         */
        if (FUNC20(opnd2p1,opnd2p2)) {
                if (FUNC20(opnd1p1,opnd1p2)) {
                        /* invalid since both operands are zero */
                        if (FUNC47()) return(INVALIDEXCEPTION);
                        FUNC53();
                        FUNC30(resultp1,resultp2);
                        FUNC5(resultp1,resultp2,dstptr);
                        return(NOEXCEPTION);
                }
                if (FUNC45())
                       	return(DIVISIONBYZEROEXCEPTION);
                FUNC51();
                FUNC36(resultp1,resultp2);
                FUNC5(resultp1,resultp2,dstptr);
                return(NOEXCEPTION);
        }
	/*
	 * Generate exponent 
	 */
	dest_exponent = FUNC8(opnd1p1) - FUNC8(opnd2p1) + DBL_BIAS;

	/*
	 * Generate mantissa
	 */
	if (FUNC14(opnd1p1)) {
		/* set hidden bit */
		FUNC3(opnd1p1);
	}
	else {
		/* check for zero */
		if (FUNC24(opnd1p1,opnd1p2)) {
			FUNC42(resultp1,resultp2);
			FUNC5(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
                /* is denormalized, want to normalize */
                FUNC2(opnd1p1);
                FUNC27(opnd1p1,opnd1p2);
		FUNC31(opnd1p1,opnd1p2,dest_exponent);
	}
	/* opnd2 needs to have hidden bit set with msb in hidden bit */
	if (FUNC14(opnd2p1)) {
		FUNC3(opnd2p1);
	}
	else {
                /* is denormalized; want to normalize */
                FUNC2(opnd2p1);
                FUNC27(opnd2p1,opnd2p2);
                while (FUNC23(opnd2p1)) {
                        dest_exponent+=8;
                        FUNC29(opnd2p1,opnd2p2);
                }
                if (FUNC22(opnd2p1)) {
                        dest_exponent+=4;
                        FUNC28(opnd2p1,opnd2p2);
                }
                while (FUNC21(opnd2p1)) {
                        dest_exponent++;
                        FUNC27(opnd2p1,opnd2p2);
                }
	}

	/* Divide the source mantissas */

	/* 
	 * A non-restoring divide algorithm is used.
	 */
	FUNC57(opnd1p1,opnd1p2,opnd2p1,opnd2p2);
	FUNC41(opnd3p1,opnd3p2);
	for (count=1; count <= DBL_P && (opnd1p1 || opnd1p2); count++) {
		FUNC27(opnd1p1,opnd1p2);
		FUNC27(opnd3p1,opnd3p2);
		if (FUNC25(opnd1p1)) {
			FUNC38(opnd3p2);
			FUNC57(opnd1p1,opnd1p2,opnd2p1,opnd2p2);
		}
		else {
			FUNC56(opnd1p1, opnd1p2, opnd2p1, opnd2p2);
		}
	}
	if (count <= DBL_P) {
		FUNC27(opnd3p1,opnd3p2);
		FUNC38(opnd3p2);
		FUNC26(opnd3p1,opnd3p2,(DBL_P-count));
		if (FUNC21(opnd3p1)) {
			FUNC27(opnd3p1,opnd3p2);
			dest_exponent--;
		}
	}
	else {
		if (FUNC21(opnd3p1)) {
			/* need to get one more bit of result */
			FUNC27(opnd1p1,opnd1p2);
			FUNC27(opnd3p1,opnd3p2);
			if (FUNC25(opnd1p1)) {
				FUNC38(opnd3p2);
				FUNC57(opnd1p1,opnd1p2,opnd2p1,opnd2p2);
			}
			else {
				FUNC56(opnd1p1,opnd1p2,opnd2p1,opnd2p2);
			}
			dest_exponent--;
		}
		if (FUNC25(opnd1p1)) guardbit = TRUE;
		stickybit = FUNC0(opnd1p1) || FUNC1(opnd1p2);
	}
	inexact = guardbit | stickybit;

	/* 
	 * round result 
	 */
	if (inexact && (dest_exponent > 0 || FUNC49())) {
		FUNC2(opnd3p1);
		switch (FUNC50()) {
			case ROUNDPLUS: 
				if (FUNC25(resultp1)) 
					FUNC9(opnd3p1,opnd3p2);
				break;
			case ROUNDMINUS: 
				if (FUNC18(resultp1)) 
					FUNC9(opnd3p1,opnd3p2);
				break;
			case ROUNDNEAREST:
				if (guardbit && (stickybit || 
				    FUNC17(opnd3p2))) {
			      		FUNC9(opnd3p1,opnd3p2);
				}
		}
		if (FUNC15(opnd3p1)) dest_exponent++;
	}
	FUNC34(resultp1,resultp2,opnd3p1,opnd3p2);

        /* 
         * Test for overflow
         */
	if (dest_exponent >= DBL_INFINITY_EXPONENT) {
                /* trap if OVERFLOWTRAP enabled */
                if (FUNC48()) {
                        /*
                         * Adjust bias of result
                         */
                        FUNC40(resultp1,dest_exponent,ovfl);
                        FUNC5(resultp1,resultp2,dstptr);
                        if (inexact) 
                            if (FUNC46())
                                return(OVERFLOWEXCEPTION | INEXACTEXCEPTION);
                            else FUNC52();
                        return(OVERFLOWEXCEPTION);
                }
		FUNC54();
                /* set result to infinity or largest number */
		FUNC39(resultp1,resultp2);
		inexact = TRUE;
	}
        /* 
         * Test for underflow
         */
	else if (dest_exponent <= 0) {
                /* trap if UNDERFLOWTRAP enabled */
                if (FUNC49()) {
                        /*
                         * Adjust bias of result
                         */
                        FUNC40(resultp1,dest_exponent,unfl);
                        FUNC5(resultp1,resultp2,dstptr);
                        if (inexact) 
                            if (FUNC46())
                                return(UNDERFLOWEXCEPTION | INEXACTEXCEPTION);
                            else FUNC52();
                        return(UNDERFLOWEXCEPTION);
                }

		/* Determine if should set underflow flag */
		is_tiny = TRUE;
		if (dest_exponent == 0 && inexact) {
			switch (FUNC50()) {
			case ROUNDPLUS: 
				if (FUNC25(resultp1)) {
					FUNC9(opnd3p1,opnd3p2);
					if (FUNC16(opnd3p1))
                			    is_tiny = FALSE;
					FUNC6(opnd3p1,opnd3p2);
				}
				break;
			case ROUNDMINUS: 
				if (FUNC18(resultp1)) {
					FUNC9(opnd3p1,opnd3p2);
					if (FUNC16(opnd3p1))
                			    is_tiny = FALSE;
					FUNC6(opnd3p1,opnd3p2);
				}
				break;
			case ROUNDNEAREST:
				if (guardbit && (stickybit || 
				    FUNC17(opnd3p2))) {
				      	FUNC9(opnd3p1,opnd3p2);
					if (FUNC16(opnd3p1))
                			    is_tiny = FALSE;
					FUNC6(opnd3p1,opnd3p2);
				}
				break;
			}
		}

                /*
                 * denormalize result or set to signed zero
                 */
		stickybit = inexact;
		FUNC7(opnd3p1,opnd3p2,dest_exponent,guardbit,
		 stickybit,inexact);

		/* return rounded number */ 
		if (inexact) {
			switch (FUNC50()) {
			case ROUNDPLUS:
				if (FUNC25(resultp1)) {
					FUNC9(opnd3p1,opnd3p2);
				}
				break;
			case ROUNDMINUS: 
				if (FUNC18(resultp1)) {
					FUNC9(opnd3p1,opnd3p2);
				}
				break;
			case ROUNDNEAREST:
				if (guardbit && (stickybit || 
				    FUNC17(opnd3p2))) {
			      		FUNC9(opnd3p1,opnd3p2);
				}
				break;
			}
                	if (is_tiny) FUNC55();
                }
		FUNC33(resultp1,resultp2,opnd3p1,opnd3p2);
	}
	else FUNC32(resultp1,dest_exponent);
	FUNC5(resultp1,resultp2,dstptr);

	/* check for inexact */
	if (inexact) {
		if (FUNC46()) return(INEXACTEXCEPTION);
		else FUNC52();
	}
	return(NOEXCEPTION);
}
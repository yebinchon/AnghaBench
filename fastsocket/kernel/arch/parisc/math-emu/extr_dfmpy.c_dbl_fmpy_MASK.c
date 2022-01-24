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
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,unsigned int,int,int,int,int) ; 
 int FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC14 (unsigned int) ; 
 scalar_t__ FUNC15 (unsigned int) ; 
 scalar_t__ FUNC16 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC17 (unsigned int) ; 
 scalar_t__ FUNC18 (unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int) ; 
 scalar_t__ FUNC22 (unsigned int) ; 
 scalar_t__ FUNC23 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC24 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC27 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC29 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC30 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC31 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC32 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC33 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC34 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC35 (unsigned int) ; 
 int /*<<< orphan*/  FUNC36 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC37 (unsigned int) ; 
 int /*<<< orphan*/  FUNC38 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC39 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC41 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC42 (unsigned int) ; 
 int FUNC43 (unsigned int) ; 
 int FUNC44 (unsigned int) ; 
 int FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC45 () ; 
 scalar_t__ FUNC46 () ; 
 scalar_t__ FUNC47 () ; 
 scalar_t__ FUNC48 () ; 
 int NOEXCEPTION ; 
 int OVERFLOWEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC49 () ; 
 int /*<<< orphan*/  FUNC50 () ; 
 int /*<<< orphan*/  FUNC51 () ; 
 int /*<<< orphan*/  FUNC52 () ; 
 int /*<<< orphan*/  FUNC53 () ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC54 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int UNDERFLOWEXCEPTION ; 
 int /*<<< orphan*/  ovfl ; 
 int /*<<< orphan*/  unfl ; 

int
FUNC55(
	    dbl_floating_point *srcptr1,
	    dbl_floating_point *srcptr2,
	    dbl_floating_point *dstptr,
	    unsigned int *status)
{
	register unsigned int opnd1p1, opnd1p2, opnd2p1, opnd2p2;
	register unsigned int opnd3p1, opnd3p2, resultp1, resultp2;
	register int dest_exponent, count;
	register boolean inexact = FALSE, guardbit = FALSE, stickybit = FALSE;
	boolean is_tiny;

	FUNC8(srcptr1,opnd1p1,opnd1p2);
	FUNC8(srcptr2,opnd2p1,opnd2p2);

	/* 
	 * set sign bit of result 
	 */
	if (FUNC43(opnd1p1) ^ FUNC43(opnd2p1)) 
		FUNC37(resultp1); 
	else FUNC42(resultp1);
	/*
	 * check first operand for NaN's or infinity
	 */
	if (FUNC15(opnd1p1)) {
		if (FUNC24(opnd1p1,opnd1p2)) {
			if (FUNC16(opnd2p1,opnd2p2)) {
				if (FUNC23(opnd2p1,opnd2p2)) {
					/* 
					 * invalid since operands are infinity 
					 * and zero 
					 */
					if (FUNC46())
                                		return(INVALIDEXCEPTION);
                                	FUNC51();
                                	FUNC28(resultp1,resultp2);
					FUNC9(resultp1,resultp2,dstptr);
					return(NOEXCEPTION);
				}
				/*
			 	 * return infinity
			 	 */
				FUNC36(resultp1,resultp2);
				FUNC9(resultp1,resultp2,dstptr);
				return(NOEXCEPTION);
			}
		}
		else {
                	/*
                 	 * is NaN; signaling or quiet?
                 	 */
                	if (FUNC22(opnd1p1)) {
                        	/* trap if INVALIDTRAP enabled */
                        	if (FUNC46()) 
                            		return(INVALIDEXCEPTION);
                        	/* make NaN quiet */
                        	FUNC51();
                        	FUNC35(opnd1p1);
                	}
			/* 
			 * is second operand a signaling NaN? 
			 */
			else if (FUNC14(opnd2p1)) {
                        	/* trap if INVALIDTRAP enabled */
                        	if (FUNC46())
                            		return(INVALIDEXCEPTION);
                        	/* make NaN quiet */
                        	FUNC51();
                        	FUNC35(opnd2p1);
				FUNC9(opnd2p1,opnd2p2,dstptr);
                		return(NOEXCEPTION);
			}
                	/*
                 	 * return quiet NaN
                 	 */
			FUNC9(opnd1p1,opnd1p2,dstptr);
                	return(NOEXCEPTION);
		}
	}
	/*
	 * check second operand for NaN's or infinity
	 */
	if (FUNC15(opnd2p1)) {
		if (FUNC24(opnd2p1,opnd2p2)) {
			if (FUNC23(opnd1p1,opnd1p2)) {
				/* invalid since operands are zero & infinity */
				if (FUNC46())
                                	return(INVALIDEXCEPTION);
                                FUNC51();
                                FUNC28(opnd2p1,opnd2p2);
				FUNC9(opnd2p1,opnd2p2,dstptr);
				return(NOEXCEPTION);
			}
			/*
			 * return infinity
			 */
			FUNC36(resultp1,resultp2);
			FUNC9(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
                /*
                 * is NaN; signaling or quiet?
                 */
                if (FUNC22(opnd2p1)) {
                        /* trap if INVALIDTRAP enabled */
                        if (FUNC46()) return(INVALIDEXCEPTION);
                        /* make NaN quiet */
                        FUNC51();
                        FUNC35(opnd2p1);
                }
                /*
                 * return quiet NaN
                 */
		FUNC9(opnd2p1,opnd2p2,dstptr);
                return(NOEXCEPTION);
	}
	/*
	 * Generate exponent 
	 */
	dest_exponent = FUNC12(opnd1p1) + FUNC12(opnd2p1) -DBL_BIAS;

	/*
	 * Generate mantissa
	 */
	if (FUNC17(opnd1p1)) {
		/* set hidden bit */
		FUNC7(opnd1p1);
	}
	else {
		/* check for zero */
		if (FUNC24(opnd1p1,opnd1p2)) {
			FUNC41(resultp1,resultp2);
			FUNC9(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
                /* is denormalized, adjust exponent */
                FUNC6(opnd1p1);
                FUNC26(opnd1p1,opnd1p2);
		FUNC29(opnd1p1,opnd1p2,dest_exponent);
	}
	/* opnd2 needs to have hidden bit set with msb in hidden bit */
	if (FUNC17(opnd2p1)) {
		FUNC7(opnd2p1);
	}
	else {
		/* check for zero */
		if (FUNC24(opnd2p1,opnd2p2)) {
			FUNC41(resultp1,resultp2);
			FUNC9(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
                /* is denormalized; want to normalize */
                FUNC6(opnd2p1);
                FUNC26(opnd2p1,opnd2p2);
		FUNC29(opnd2p1,opnd2p2,dest_exponent);
	}

	/* Multiply two source mantissas together */

	/* make room for guard bits */
	FUNC27(opnd2p1,opnd2p2);
	FUNC40(opnd3p1,opnd3p2);
        /* 
         * Four bits at a time are inspected in each loop, and a 
         * simple shift and add multiply algorithm is used. 
         */ 
	for (count=1;count<=DBL_P;count+=4) {
		stickybit |= FUNC44(opnd3p2);
		FUNC30(opnd3p1,opnd3p2);
		if (FUNC1(opnd1p2)) {
	 		/* Twoword_add should be an ADDC followed by an ADD. */
                        FUNC54(opnd3p1, opnd3p2, opnd2p1<<3 | opnd2p2>>29, 
				    opnd2p2<<3);
		}
		if (FUNC2(opnd1p2)) {
                        FUNC54(opnd3p1, opnd3p2, opnd2p1<<2 | opnd2p2>>30, 
				    opnd2p2<<2);
		}
		if (FUNC3(opnd1p2)) {
                        FUNC54(opnd3p1, opnd3p2, opnd2p1<<1 | opnd2p2>>31,
				    opnd2p2<<1);
		}
		if (FUNC4(opnd1p2)) {
                        FUNC54(opnd3p1, opnd3p2, opnd2p1, opnd2p2);
		}
		FUNC30(opnd1p1,opnd1p2);
	}
	if (FUNC5(opnd3p1)==0) {
		FUNC26(opnd3p1,opnd3p2);
	}
	else {
		/* result mantissa >= 2. */
		dest_exponent++;
	}
	/* check for denormalized result */
	while (FUNC5(opnd3p1)==0) {
		FUNC26(opnd3p1,opnd3p2);
		dest_exponent--;
	}
	/*
	 * check for guard, sticky and inexact bits 
	 */
	stickybit |= FUNC0(opnd3p2) << 25;
	guardbit = (FUNC0(opnd3p2) << 24) >> 31;
	inexact = guardbit | stickybit;

	/* align result mantissa */
	FUNC31(opnd3p1,opnd3p2);

	/* 
	 * round result 
	 */
	if (inexact && (dest_exponent>0 || FUNC48())) {
		FUNC6(opnd3p1);
		switch (FUNC49()) {
			case ROUNDPLUS: 
				if (FUNC25(resultp1)) 
					FUNC13(opnd3p1,opnd3p2);
				break;
			case ROUNDMINUS: 
				if (FUNC21(resultp1)) 
					FUNC13(opnd3p1,opnd3p2);
				break;
			case ROUNDNEAREST:
				if (guardbit) {
			   	if (stickybit || FUNC20(opnd3p2))
			      	FUNC13(opnd3p1,opnd3p2);
				}
		}
		if (FUNC18(opnd3p1)) dest_exponent++;
	}
	FUNC34(resultp1,resultp2,opnd3p1,opnd3p2);

        /* 
         * Test for overflow
         */
	if (dest_exponent >= DBL_INFINITY_EXPONENT) {
                /* trap if OVERFLOWTRAP enabled */
                if (FUNC47()) {
                        /*
                         * Adjust bias of result
                         */
			FUNC39(resultp1,dest_exponent,ovfl);
			FUNC9(resultp1,resultp2,dstptr);
			if (inexact) 
			    if (FUNC45())
				return (OVERFLOWEXCEPTION | INEXACTEXCEPTION);
			    else FUNC50();
			return (OVERFLOWEXCEPTION);
                }
		inexact = TRUE;
		FUNC52();
                /* set result to infinity or largest number */
		FUNC38(resultp1,resultp2);
	}
        /* 
         * Test for underflow
         */
	else if (dest_exponent <= 0) {
                /* trap if UNDERFLOWTRAP enabled */
                if (FUNC48()) {
                        /*
                         * Adjust bias of result
                         */
			FUNC39(resultp1,dest_exponent,unfl);
			FUNC9(resultp1,resultp2,dstptr);
			if (inexact) 
			    if (FUNC45())
				return (UNDERFLOWEXCEPTION | INEXACTEXCEPTION);
			    else FUNC50();
			return (UNDERFLOWEXCEPTION);
                }

		/* Determine if should set underflow flag */
		is_tiny = TRUE;
		if (dest_exponent == 0 && inexact) {
			switch (FUNC49()) {
			case ROUNDPLUS: 
				if (FUNC25(resultp1)) {
					FUNC13(opnd3p1,opnd3p2);
					if (FUNC19(opnd3p1))
                			    is_tiny = FALSE;
					FUNC10(opnd3p1,opnd3p2);
				}
				break;
			case ROUNDMINUS: 
				if (FUNC21(resultp1)) {
					FUNC13(opnd3p1,opnd3p2);
					if (FUNC19(opnd3p1))
                			    is_tiny = FALSE;
					FUNC10(opnd3p1,opnd3p2);
				}
				break;
			case ROUNDNEAREST:
				if (guardbit && (stickybit || 
				    FUNC20(opnd3p2))) {
				      	FUNC13(opnd3p1,opnd3p2);
					if (FUNC19(opnd3p1))
                			    is_tiny = FALSE;
					FUNC10(opnd3p1,opnd3p2);
				}
				break;
			}
		}

		/*
		 * denormalize result or set to signed zero
		 */
		stickybit = inexact;
		FUNC11(opnd3p1,opnd3p2,dest_exponent,guardbit,
		 stickybit,inexact);

		/* return zero or smallest number */
		if (inexact) {
			switch (FUNC49()) {
			case ROUNDPLUS: 
				if (FUNC25(resultp1)) {
					FUNC13(opnd3p1,opnd3p2);
				}
				break;
			case ROUNDMINUS: 
				if (FUNC21(resultp1)) {
					FUNC13(opnd3p1,opnd3p2);
				}
				break;
			case ROUNDNEAREST:
				if (guardbit && (stickybit || 
				    FUNC20(opnd3p2))) {
			      		FUNC13(opnd3p1,opnd3p2);
				}
				break;
			}
                	if (is_tiny) FUNC53();
		}
		FUNC33(resultp1,resultp2,opnd3p1,opnd3p2);
	}
	else FUNC32(resultp1,dest_exponent);
	/* check for inexact */
	FUNC9(resultp1,resultp2,dstptr);
	if (inexact) {
		if (FUNC45()) return(INEXACTEXCEPTION);
		else FUNC50();
	}
	return(NOEXCEPTION);
}
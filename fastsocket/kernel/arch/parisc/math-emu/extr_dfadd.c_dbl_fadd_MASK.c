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
 int DBL_INFINITY_EXPONENT ; 
 int DBL_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,unsigned int,int,unsigned int) ; 
 int FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC14 (unsigned int) ; 
 scalar_t__ FUNC15 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC16 (unsigned int) ; 
 scalar_t__ FUNC17 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC18 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC19 (unsigned int) ; 
 scalar_t__ FUNC20 (unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (unsigned int) ; 
 scalar_t__ FUNC23 (unsigned int) ; 
 scalar_t__ FUNC24 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC25 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC26 (unsigned int) ; 
 scalar_t__ FUNC27 (unsigned int) ; 
 scalar_t__ FUNC28 (unsigned int) ; 
 scalar_t__ FUNC29 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC30 (unsigned int) ; 
 int /*<<< orphan*/  FUNC31 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC32 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC33 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC34 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC35 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC36 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC37 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC38 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC39 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC40 (unsigned int,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC41 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC42 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC43 (unsigned int) ; 
 int /*<<< orphan*/  FUNC44 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC45 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC46 (unsigned int) ; 
 int /*<<< orphan*/  FUNC47 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC48 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (unsigned int) ; 
 int FUNC50 (unsigned int) ; 
 int /*<<< orphan*/  FUNC51 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC52 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC53 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC54 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC55 (unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC56 (unsigned int) ; 
 int /*<<< orphan*/  FUNC57 (unsigned int) ; 
 int /*<<< orphan*/  FUNC58 (unsigned int) ; 
 int /*<<< orphan*/  FUNC59 (unsigned int) ; 
 scalar_t__ FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC60 () ; 
 scalar_t__ FUNC61 () ; 
 scalar_t__ FUNC62 () ; 
 scalar_t__ FUNC63 (int) ; 
 scalar_t__ FUNC64 () ; 
 int NOEXCEPTION ; 
 int OVERFLOWEXCEPTION ; 
#define  ROUNDMINUS 131 
#define  ROUNDNEAREST 130 
#define  ROUNDPLUS 129 
#define  ROUNDZERO 128 
 int FUNC65 () ; 
 int /*<<< orphan*/  FUNC66 () ; 
 int /*<<< orphan*/  FUNC67 () ; 
 int /*<<< orphan*/  FUNC68 () ; 
 scalar_t__ TRUE ; 
 int UNDERFLOWEXCEPTION ; 
 int /*<<< orphan*/  ovfl ; 
 int /*<<< orphan*/  unfl ; 

FUNC69(
    dbl_floating_point *leftptr,
    dbl_floating_point *rightptr,
    dbl_floating_point *dstptr,
    unsigned int *status)
{
    register unsigned int signless_upper_left, signless_upper_right, save;
    register unsigned int leftp1, leftp2, rightp1, rightp2, extent;
    register unsigned int resultp1 = 0, resultp2 = 0;
    
    register int result_exponent, right_exponent, diff_exponent;
    register int sign_save, jumpsize;
    register boolean inexact = FALSE;
    register boolean underflowtrap;
        
    /* Create local copies of the numbers */
    FUNC7(leftptr,leftp1,leftp2);
    FUNC7(rightptr,rightp1,rightp2);

    /* A zero "save" helps discover equal operands (for later),  *
     * and is used in swapping operands (if needed).             */
    FUNC55(leftp1,rightp1,/*to*/save);

    /*
     * check first operand for NaN's or infinity
     */
    if ((result_exponent = FUNC10(leftp1)) == DBL_INFINITY_EXPONENT)
	{
	if (FUNC29(leftp1,leftp2)) 
	    {
	    if (FUNC18(rightp1,rightp2)) 
		{
		if (FUNC15(rightp1,rightp2) && save!=0) 
		    {
		    /* 
		     * invalid since operands are opposite signed infinity's
		     */
		    if (FUNC61()) return(INVALIDEXCEPTION);
                    FUNC67();
                    FUNC37(resultp1,resultp2);
		    FUNC9(resultp1,resultp2,dstptr);
		    return(NOEXCEPTION);
		    }
		/*
	 	 * return infinity
	 	 */
		FUNC9(leftp1,leftp2,dstptr);
		return(NOEXCEPTION);
		}
	    }
	else 
	    {
            /*
             * is NaN; signaling or quiet?
             */
            if (FUNC23(leftp1)) 
		{
               	/* trap if INVALIDTRAP enabled */
		if (FUNC61()) return(INVALIDEXCEPTION);
        	/* make NaN quiet */
        	FUNC67();
        	FUNC43(leftp1);
        	}
	    /* 
	     * is second operand a signaling NaN? 
	     */
	    else if (FUNC14(rightp1)) 
		{
        	/* trap if INVALIDTRAP enabled */
               	if (FUNC61()) return(INVALIDEXCEPTION);
		/* make NaN quiet */
		FUNC67();
		FUNC43(rightp1);
		FUNC9(rightp1,rightp2,dstptr);
		return(NOEXCEPTION);
		}
	    /*
 	     * return quiet NaN
 	     */
	    FUNC9(leftp1,leftp2,dstptr);
 	    return(NOEXCEPTION);
	    }
	} /* End left NaN or Infinity processing */
    /*
     * check second operand for NaN's or infinity
     */
    if (FUNC16(rightp1)) 
	{
	if (FUNC29(rightp1,rightp2)) 
	    {
	    /* return infinity */
	    FUNC9(rightp1,rightp2,dstptr);
	    return(NOEXCEPTION);
	    }
        /*
         * is NaN; signaling or quiet?
         */
        if (FUNC23(rightp1)) 
	    {
            /* trap if INVALIDTRAP enabled */
	    if (FUNC61()) return(INVALIDEXCEPTION);
	    /* make NaN quiet */
	    FUNC67();
	    FUNC43(rightp1);
	    }
	/*
	 * return quiet NaN
 	 */
	FUNC9(rightp1,rightp2,dstptr);
	return(NOEXCEPTION);
    	} /* End right NaN or Infinity processing */

    /* Invariant: Must be dealing with finite numbers */

    /* Compare operands by removing the sign */
    FUNC8(leftp1,signless_upper_left);
    FUNC8(rightp1,signless_upper_right);

    /* sign difference selects add or sub operation. */
    if(FUNC17(leftp2,rightp2,signless_upper_left,signless_upper_right))
	{
	/* Set the left operand to the larger one by XOR swap *
	 *  First finish the first word using "save"          */
	FUNC54(save,rightp1,/*to*/rightp1);
	FUNC54(save,leftp1,/*to*/leftp1);
     	FUNC53(leftp2,rightp2);
	result_exponent = FUNC10(leftp1);
	}
    /* Invariant:  left is not smaller than right. */ 

    if((right_exponent = FUNC10(rightp1)) == 0)
        {
	/* Denormalized operands.  First look for zeroes */
	if(FUNC29(rightp1,rightp2)) 
	    {
	    /* right is zero */
	    if(FUNC25(leftp1,leftp2))
		{
		/* Both operands are zeros */
		if(FUNC63(ROUNDMINUS))
		    {
		    FUNC39(leftp1,/*with*/rightp1);
		    }
		else
		    {
		    FUNC1(leftp1,/*with*/rightp1);
		    }
		}
	    else 
		{
		/* Left is not a zero and must be the result.  Trapped
		 * underflows are signaled if left is denormalized.  Result
		 * is always exact. */
		if( (result_exponent == 0) && FUNC64() )
		    {
		    /* need to normalize results mantissa */
	    	    sign_save = FUNC50(leftp1);
		    FUNC31(leftp1,leftp2);
		    FUNC38(leftp1,leftp2,result_exponent);
		    FUNC44(leftp1,/*using*/sign_save);
                    FUNC48(leftp1,result_exponent,unfl);
		    FUNC9(leftp1,leftp2,dstptr);
		    /* inexact = FALSE */
		    return(UNDERFLOWEXCEPTION);
		    }
		}
	    FUNC9(leftp1,leftp2,dstptr);
	    return(NOEXCEPTION);
	    }

	/* Neither are zeroes */
	FUNC4(rightp1);	/* Exponent is already cleared */
	if(result_exponent == 0 )
	    {
	    /* Both operands are denormalized.  The result must be exact
	     * and is simply calculated.  A sum could become normalized and a
	     * difference could cancel to a true zero. */
	    if( (/*signed*/int) save < 0 )
		{
		FUNC51(leftp1,leftp2,/*minus*/rightp1,rightp2,
		/*into*/resultp1,resultp2);
		if(FUNC29(resultp1,resultp2))
		    {
		    if(FUNC63(ROUNDMINUS))
			{
			FUNC46(resultp1);
			}
		    else
			{
			FUNC49(resultp1);
			}
		    FUNC9(resultp1,resultp2,dstptr);
		    return(NOEXCEPTION);
		    }
		}
	    else
		{
		FUNC0(leftp1,leftp2,rightp1,rightp2,
		/*into*/resultp1,resultp2);
		if(FUNC19(resultp1))
		    {
		    FUNC9(resultp1,resultp2,dstptr);
		    return(NOEXCEPTION);
		    }
		}
	    if(FUNC64())
		{
		/* need to normalize result */
	    	sign_save = FUNC50(resultp1);
		FUNC31(resultp1,resultp2);
		FUNC38(resultp1,resultp2,result_exponent);
		FUNC44(resultp1,/*using*/sign_save);
                FUNC48(resultp1,result_exponent,unfl);
	        FUNC9(resultp1,resultp2,dstptr);
		/* inexact = FALSE */
	        return(UNDERFLOWEXCEPTION);
		}
	    FUNC9(resultp1,resultp2,dstptr);
	    return(NOEXCEPTION);
	    }
	right_exponent = 1;	/* Set exponent to reflect different bias
				 * with denomalized numbers. */
	}
    else
	{
	FUNC6(rightp1);
	}
    FUNC3(leftp1);
    diff_exponent = result_exponent - right_exponent;

    /* 
     * Special case alignment of operands that would force alignment 
     * beyond the extent of the extension.  A further optimization
     * could special case this but only reduces the path length for this
     * infrequent case.
     */
    if(diff_exponent > DBL_THRESHOLD)
	{
	diff_exponent = DBL_THRESHOLD;
	}
    
    /* Align right operand by shifting to right */
    FUNC40(/*operand*/rightp1,rightp2,/*shifted by*/diff_exponent,
    /*and lower to*/extent);

    /* Treat sum and difference of the operands separately. */
    if( (/*signed*/int) save < 0 )
	{
	/*
	 * Difference of the two operands.  Their can be no overflow.  A
	 * borrow can occur out of the hidden bit and force a post
	 * normalization phase.
	 */
	FUNC52(leftp1,leftp2,/*minus*/rightp1,rightp2,
	/*with*/extent,/*into*/resultp1,resultp2);
	if(FUNC26(resultp1))
	    {
	    /* Handle normalization */
	    /* A straight foward algorithm would now shift the result
	     * and extension left until the hidden bit becomes one.  Not
	     * all of the extension bits need participate in the shift.
	     * Only the two most significant bits (round and guard) are
	     * needed.  If only a single shift is needed then the guard
	     * bit becomes a significant low order bit and the extension
	     * must participate in the rounding.  If more than a single 
	     * shift is needed, then all bits to the right of the guard 
	     * bit are zeros, and the guard bit may or may not be zero. */
	    sign_save = FUNC50(resultp1);
            FUNC32(resultp1,resultp2,extent,resultp1,resultp2);

            /* Need to check for a zero result.  The sign and exponent
	     * fields have already been zeroed.  The more efficient test
	     * of the full object can be used.
	     */
    	    if(FUNC24(resultp1,resultp2))
		/* Must have been "x-x" or "x+(-x)". */
		{
		if(FUNC63(ROUNDMINUS)) FUNC46(resultp1);
		FUNC9(resultp1,resultp2,dstptr);
		return(NOEXCEPTION);
		}
	    result_exponent--;
	    /* Look to see if normalization is finished. */
	    if(FUNC19(resultp1))
		{
		if(result_exponent==0)
		    {
		    /* Denormalized, exponent should be zero.  Left operand *
		     * was normalized, so extent (guard, round) was zero    */
		    goto underflow;
		    }
		else
		    {
		    /* No further normalization is needed. */
		    FUNC44(resultp1,/*using*/sign_save);
	    	    FUNC59(extent);
		    goto round;
		    }
		}

	    /* Check for denormalized, exponent should be zero.  Left    *
	     * operand was normalized, so extent (guard, round) was zero */
	    if(!(underflowtrap = FUNC64()) &&
	       result_exponent==0) goto underflow;

	    /* Shift extension to complete one bit of normalization and
	     * update exponent. */
	    FUNC59(extent);

	    /* Discover first one bit to determine shift amount.  Use a
	     * modified binary search.  We have already shifted the result
	     * one position right and still not found a one so the remainder
	     * of the extension must be zero and simplifies rounding. */
	    /* Scan bytes */
	    while(FUNC28(resultp1))
		{
		FUNC36(resultp1,resultp2);
		if((result_exponent -= 8) <= 0  && !underflowtrap)
		    goto underflow;
		}
	    /* Now narrow it down to the nibble */
	    if(FUNC27(resultp1))
		{
		/* The lower nibble contains the normalizing one */
		FUNC35(resultp1,resultp2);
		if((result_exponent -= 4) <= 0 && !underflowtrap)
		    goto underflow;
		}
	    /* Select case were first bit is set (already normalized)
	     * otherwise select the proper shift. */
	    if((jumpsize = FUNC12(resultp1)) > 7)
		{
		/* Already normalized */
		if(result_exponent <= 0) goto underflow;
		FUNC44(resultp1,/*using*/sign_save);
		FUNC42(resultp1,/*using*/result_exponent);
		FUNC9(resultp1,resultp2,dstptr);
		return(NOEXCEPTION);
		}
	    FUNC45(resultp1,/*using*/sign_save);
	    switch(jumpsize) 
		{
		case 1:
		    {
		    FUNC34(resultp1,resultp2);
		    result_exponent -= 3;
		    break;
		    }
		case 2:
		case 3:
		    {
		    FUNC33(resultp1,resultp2);
		    result_exponent -= 2;
		    break;
		    }
		case 4:
		case 5:
		case 6:
		case 7:
		    {
		    FUNC31(resultp1,resultp2);
		    result_exponent -= 1;
		    break;
		    }
		}
	    if(result_exponent > 0) 
		{
		FUNC42(resultp1,/*using*/result_exponent);
		FUNC9(resultp1,resultp2,dstptr);
		return(NOEXCEPTION); 	/* Sign bit is already set */
		}
	    /* Fixup potential underflows */
	  underflow:
	    if(FUNC64())
		{
		FUNC44(resultp1,sign_save);
                FUNC48(resultp1,result_exponent,unfl);
		FUNC9(resultp1,resultp2,dstptr);
		/* inexact = FALSE */
		return(UNDERFLOWEXCEPTION);
		}
	    /* 
	     * Since we cannot get an inexact denormalized result,
	     * we can now return.
	     */
	    FUNC11(resultp1,resultp2,(1-result_exponent),extent);
	    FUNC5(resultp1);
	    FUNC44(resultp1,sign_save);
	    FUNC9(resultp1,resultp2,dstptr);
	    return(NOEXCEPTION);
	    } /* end if(hidden...)... */
	/* Fall through and round */
	} /* end if(save < 0)... */
    else 
	{
	/* Add magnitudes */
	FUNC0(leftp1,leftp2,rightp1,rightp2,/*to*/resultp1,resultp2);
	if(FUNC20(resultp1))
	    {
	    /* Prenormalization required. */
	    FUNC41(resultp2,extent,extent);
	    FUNC2(resultp1,resultp2);
	    result_exponent++;
	    } /* end if hiddenoverflow... */
	} /* end else ...add magnitudes... */
    
    /* Round the result.  If the extension is all zeros,then the result is
     * exact.  Otherwise round in the correct direction.  No underflow is
     * possible. If a postnormalization is necessary, then the mantissa is
     * all zeros so no shift is needed. */
  round:
    if(FUNC56(extent))
	{
	inexact = TRUE;
	switch(FUNC65())
	    {
	    case ROUNDNEAREST: /* The default. */
	    if(FUNC58(extent))
		{
		/* at least 1/2 ulp */
		if(FUNC57(extent)  ||
		  FUNC21(resultp2))
		    {
		    /* either exactly half way and odd or more than 1/2ulp */
		    FUNC13(resultp1,resultp2);
		    }
		}
	    break;

	    case ROUNDPLUS:
	    if(FUNC30(resultp1))
		{
		/* Round up positive results */
		FUNC13(resultp1,resultp2);
		}
	    break;
	    
	    case ROUNDMINUS:
	    if(FUNC22(resultp1))
		{
		/* Round down negative results */
		FUNC13(resultp1,resultp2);
		}
	    
	    case ROUNDZERO:;
	    /* truncate is simple */
	    } /* end switch... */
	if(FUNC20(resultp1)) result_exponent++;
	}
    if(result_exponent == DBL_INFINITY_EXPONENT)
        {
        /* Overflow */
        if(FUNC62())
	    {
	    FUNC48(resultp1,result_exponent,ovfl);
	    FUNC9(resultp1,resultp2,dstptr);
	    if (inexact)
		if (FUNC60())
			return(OVERFLOWEXCEPTION | INEXACTEXCEPTION);
		else FUNC66();
	    return(OVERFLOWEXCEPTION);
	    }
        else
	    {
	    inexact = TRUE;
	    FUNC68();
	    FUNC47(resultp1,resultp2);
	    }
	}
    else FUNC42(resultp1,result_exponent);
    FUNC9(resultp1,resultp2,dstptr);
    if(inexact) 
	if(FUNC60())
	    return(INEXACTEXCEPTION);
	else FUNC66();
    return(NOEXCEPTION);
}
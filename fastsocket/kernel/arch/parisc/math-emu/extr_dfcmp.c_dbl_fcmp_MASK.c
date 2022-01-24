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

/* Variables and functions */
 scalar_t__ DBL_INFINITY_EXPONENT ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 scalar_t__ FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 int NOEXCEPTION ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 

int
FUNC19 (dbl_floating_point * leftptr, dbl_floating_point * rightptr,
	  unsigned int cond, unsigned int *status)
                                           
                       /* The predicate to be tested */
                         
    {
    register unsigned int leftp1, leftp2, rightp1, rightp2;
    register int xorresult;
        
    /* Create local copies of the numbers */
    FUNC2(leftptr,leftp1,leftp2);
    FUNC2(rightptr,rightp1,rightp2);
    /*
     * Test for NaN
     */
    if(    (FUNC3(leftp1) == DBL_INFINITY_EXPONENT)
        || (FUNC3(rightp1) == DBL_INFINITY_EXPONENT) )
	{
	/* Check if a NaN is involved.  Signal an invalid exception when 
	 * comparing a signaling NaN or when comparing quiet NaNs and the
	 * low bit of the condition is set */
        if( ((FUNC3(leftp1) == DBL_INFINITY_EXPONENT)
	    && FUNC5(leftp1,leftp2) 
	    && (FUNC12(cond) || FUNC7(leftp1)))
	   ||
	    ((FUNC3(rightp1) == DBL_INFINITY_EXPONENT)
	    && FUNC5(rightp1,rightp2) 
	    && (FUNC12(cond) || FUNC7(rightp1))) )
	    {
	    if( FUNC14() ) {
	    	FUNC17(FUNC18(cond));
		return(INVALIDEXCEPTION);
	    }
	    else FUNC16();
	    FUNC17(FUNC18(cond));
	    return(NOEXCEPTION);
	    }
	/* All the exceptional conditions are handled, now special case
	   NaN compares */
        else if( ((FUNC3(leftp1) == DBL_INFINITY_EXPONENT)
	    && FUNC5(leftp1,leftp2))
	   ||
	    ((FUNC3(rightp1) == DBL_INFINITY_EXPONENT)
	    && FUNC5(rightp1,rightp2)) )
	    {
	    /* NaNs always compare unordered. */
	    FUNC17(FUNC18(cond));
	    return(NOEXCEPTION);
	    }
	/* infinities will drop down to the normal compare mechanisms */
	}
    /* First compare for unequal signs => less or greater or
     * special equal case */
    FUNC10(leftp1,rightp1,xorresult);
    if( xorresult < 0 )
        {
        /* left negative => less, left positive => greater.
         * equal is possible if both operands are zeros. */
        if( FUNC8(leftp1,leftp2) 
	  && FUNC8(rightp1,rightp2) )
            {
	    FUNC17(FUNC11(cond));
	    }
	else if( FUNC6(leftp1) )
	    {
	    FUNC17(FUNC15(cond));
	    }
	else
	    {
	    FUNC17(FUNC13(cond));
	    }
        }
    /* Signs are the same.  Treat negative numbers separately
     * from the positives because of the reversed sense.  */
    else if(FUNC4(leftp1,leftp2,rightp1,rightp2))
        {
        FUNC17(FUNC11(cond));
        }
    else if( FUNC9(leftp1) )
        {
        /* Positive compare */
	if( FUNC0(leftp1) < FUNC0(rightp1) )
	    {
	    FUNC17(FUNC15(cond));
	    }
	else if( FUNC0(leftp1) > FUNC0(rightp1) )
	    {
	    FUNC17(FUNC13(cond));
	    }
	else
	    {
	    /* Equal first parts.  Now we must use unsigned compares to
	     * resolve the two possibilities. */
	    if( FUNC1(leftp2) < FUNC1(rightp2) )
		{
		FUNC17(FUNC15(cond));
		}
	    else 
		{
		FUNC17(FUNC13(cond));
		}
	    }
	}
    else
        {
        /* Negative compare.  Signed or unsigned compares
         * both work the same.  That distinction is only
         * important when the sign bits differ. */
	if( FUNC0(leftp1) > FUNC0(rightp1) )
	    {
	    FUNC17(FUNC15(cond));
	    }
	else if( FUNC0(leftp1) < FUNC0(rightp1) )
	    {
	    FUNC17(FUNC13(cond));
	    }
	else
	    {
	    /* Equal first parts.  Now we must use unsigned compares to
	     * resolve the two possibilities. */
	    if( FUNC1(leftp2) > FUNC1(rightp2) )
		{
		FUNC17(FUNC15(cond));
		}
	    else 
		{
		FUNC17(FUNC13(cond));
		}
	    }
        }
	return(NOEXCEPTION);
    }
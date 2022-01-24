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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int INEXACTEXCEPTION ; 
 scalar_t__ FUNC1 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC2 () ; 
 scalar_t__ SGL_BIAS ; 
 unsigned int SGL_EXP_LENGTH ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (unsigned int) ; 

int
FUNC10(
			unsigned int *srcptr,
			unsigned int *nullptr,
			sgl_floating_point *dstptr,
			unsigned int *status)
{
	register unsigned int src, result = 0;
	register int dst_exponent;

	src = *srcptr;

	/* Check for zero */ 
	if (src == 0) { 
	       	FUNC8(result); 
		*dstptr = result;
	       	return(NOEXCEPTION); 
	} 
	/*
	 * Generate exponent and normalized mantissa
	 */
	dst_exponent = 16;    /* initialize for normalization */
	/*
	 * Check word for most significant bit set.  Returns
	 * a value in dst_exponent indicating the bit position,
	 * between -1 and 30.
	 */
	FUNC0(src,dst_exponent);
	/*  left justify source, with msb at bit position 0  */
	src <<= dst_exponent+1;
	FUNC7(result, src >> SGL_EXP_LENGTH);
	FUNC6(result, 30+SGL_BIAS - dst_exponent);

	/* check for inexact */
	if (FUNC9(src)) {
		switch (FUNC2()) {
			case ROUNDPLUS: 
				FUNC4(result);
				break;
			case ROUNDMINUS: /* never negative */
				break;
			case ROUNDNEAREST:
				FUNC5(src,result);
				break;
		}
		if (FUNC1()) {
			*dstptr = result;
			return(INEXACTEXCEPTION);
		}
		else FUNC3();
	}
	*dstptr = result;
	return(NOEXCEPTION);
}
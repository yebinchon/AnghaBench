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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,unsigned int) ; 
 scalar_t__ FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int INEXACTEXCEPTION ; 
 scalar_t__ FUNC4 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC5 () ; 
 scalar_t__ SGL_BIAS ; 
 int SGL_EXP_LENGTH ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int,unsigned int,int,int) ; 

int
FUNC17(
			dbl_integer *srcptr,
			unsigned int *nullptr,
			sgl_floating_point *dstptr,
			unsigned int *status)
{
	int dst_exponent, srcp1;
	unsigned int result = 0, srcp2;

	FUNC0(srcptr,srcp1,srcp2);
	/* 
	 * set sign bit of result and get magnitude of source 
	 */
	if (srcp1 < 0) {
		FUNC13(result);  
		FUNC2(srcp1,srcp2);
	}
	else {
		FUNC15(result);
        	/* Check for zero */
        	if (srcp1 == 0 && srcp2 == 0) {
                	FUNC14(result);
                	*dstptr = result;
                	return(NOEXCEPTION);
		}
        }
	/*
	 * Generate exponent and normalized mantissa
	 */
	dst_exponent = 16;    /* initialize for normalization */
	if (srcp1 == 0) {
		/*
		 * Check word for most significant bit set.  Returns
		 * a value in dst_exponent indicating the bit position,
		 * between -1 and 30.
		 */
		FUNC3(srcp2,dst_exponent);
		/*  left justify source, with msb at bit position 1  */
		if (dst_exponent >= 0) {
			srcp1 = srcp2 << dst_exponent;    
			srcp2 = 0;
		}
		else {
			srcp1 = srcp2 >> 1;
			srcp2 <<= 31; 
		}
		/*
		 *  since msb set is in second word, need to 
		 *  adjust bit position count
		 */
		dst_exponent += 32;
	}
	else {
		/*
		 * Check word for most significant bit set.  Returns
		 * a value in dst_exponent indicating the bit position,
		 * between -1 and 30.
		 *
		 */
		FUNC3(srcp1,dst_exponent);
		/*  left justify source, with msb at bit position 1  */
		if (dst_exponent > 0) {
			FUNC16(srcp1,srcp2,(32-dst_exponent),
			 srcp1); 
			srcp2 <<= dst_exponent;
		}
		/*
		 * If dst_exponent = 0, we don't need to shift anything.
		 * If dst_exponent = -1, src = - 2**63 so we won't need to 
		 * shift srcp2.
		 */
		else srcp1 >>= -(dst_exponent);
	}
	FUNC12(result, srcp1 >> (SGL_EXP_LENGTH - 1));
	FUNC11(result, (62+SGL_BIAS) - dst_exponent);

	/* check for inexact */
	if (FUNC1(srcp1,srcp2)) {
		switch (FUNC5()) {
			case ROUNDPLUS: 
				if (FUNC9(result)) 
					FUNC7(result);
				break;
			case ROUNDMINUS: 
				if (FUNC8(result)) 
					FUNC7(result);
				break;
			case ROUNDNEAREST:
				FUNC10(srcp1,srcp2,result);
		}
		if (FUNC4()) {
			*dstptr = result;
			return(INEXACTEXCEPTION);
		}
		else FUNC6();
	}
	*dstptr = result;
	return(NOEXCEPTION);
}
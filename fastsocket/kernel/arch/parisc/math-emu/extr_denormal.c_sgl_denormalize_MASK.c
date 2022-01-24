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
typedef  scalar_t__ boolean ;

/* Variables and functions */
 scalar_t__ FALSE ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int SGL_WRAP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int) ; 
 int FUNC5 (unsigned int) ; 

void
FUNC6(unsigned int *sgl_opnd, boolean *inexactflag, int rmode)
{
	unsigned int opnd;
	int sign, exponent;
	boolean guardbit = FALSE, stickybit, inexact;

	opnd = *sgl_opnd;
	stickybit = *inexactflag;
        exponent = FUNC1(opnd) - SGL_WRAP;
        sign = FUNC5(opnd);
	FUNC0(opnd,exponent,guardbit,stickybit,inexact);
	if (inexact) {
	    switch (rmode) {
	      case ROUNDPLUS:
		if (sign == 0) {
			FUNC2(opnd);
		}
		break;
	      case ROUNDMINUS:
		if (sign != 0) {
			FUNC2(opnd);
		}
		break;
	      case ROUNDNEAREST:
		if (guardbit && (stickybit || 
		       FUNC3(opnd))) {
			   FUNC2(opnd);
		}
		break;
	    }
	}
	FUNC4(opnd,sign);
	*sgl_opnd = opnd;
	*inexactflag = inexact;
	return;
}
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
 int DBL_WRAP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int) ; 
 int FUNC5 (unsigned int) ; 
 scalar_t__ FALSE ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 

void
FUNC6(unsigned int *dbl_opndp1,
	unsigned int * dbl_opndp2,
	boolean *inexactflag,
	int rmode)
{
	unsigned int opndp1, opndp2;
	int sign, exponent;
	boolean guardbit = FALSE, stickybit, inexact;

	opndp1 = *dbl_opndp1;
	opndp2 = *dbl_opndp2;
	stickybit = *inexactflag;
	exponent = FUNC1(opndp1) - DBL_WRAP;
	sign = FUNC5(opndp1);
	FUNC0(opndp1,opndp2,exponent,guardbit,stickybit,inexact);
	if (inexact) {
	    switch (rmode) {
	      case ROUNDPLUS:
		if (sign == 0) {
			FUNC2(opndp1,opndp2);
		}
		break;
	      case ROUNDMINUS:
		if (sign != 0) {
			FUNC2(opndp1,opndp2);
		}
		break;
	      case ROUNDNEAREST:
		if (guardbit && (stickybit || 
		       FUNC3(opndp2))) {
			   FUNC2(opndp1,opndp2);
		}
		break;
	    }
	}
	FUNC4(opndp1,sign);
	*dbl_opndp1 = opndp1;
	*dbl_opndp2 = opndp2;
	*inexactflag = inexact;
	return;
}
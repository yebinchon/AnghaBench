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
typedef  int u64 ;
typedef  int /*<<< orphan*/  ieee754sp ;
typedef  int /*<<< orphan*/  ieee754dp ;

/* Variables and functions */
 int /*<<< orphan*/  CLEARCX ; 
 int /*<<< orphan*/  COMPXSP ; 
 scalar_t__ DP_EBIAS ; 
 int /*<<< orphan*/  DP_EMAX ; 
 int DP_MBITS ; 
 int /*<<< orphan*/  EXPLODEXSP ; 
 int /*<<< orphan*/  FLUSHXSP ; 
#define  IEEE754_CLASS_DNORM 133 
#define  IEEE754_CLASS_INF 132 
#define  IEEE754_CLASS_NORM 131 
#define  IEEE754_CLASS_QNAN 130 
#define  IEEE754_CLASS_SNAN 129 
#define  IEEE754_CLASS_ZERO 128 
 int /*<<< orphan*/  IEEE754_INVALID_OPERATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SP_HIDDEN_BIT ; 
 int SP_MBITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int xc ; 
 scalar_t__ xe ; 
 int xm ; 
 int /*<<< orphan*/  xs ; 

ieee754dp FUNC6(ieee754sp x)
{
	COMPXSP;

	EXPLODEXSP;

	CLEARCX;

	FLUSHXSP;

	switch (xc) {
	case IEEE754_CLASS_SNAN:
		FUNC0(IEEE754_INVALID_OPERATION);
		return FUNC4(FUNC2(), "fsp");
	case IEEE754_CLASS_QNAN:
		return FUNC4(FUNC1(xs,
						 DP_EMAX + 1 + DP_EBIAS,
						 ((u64) xm
						  << (DP_MBITS -
						      SP_MBITS))), "fsp",
					 x);
	case IEEE754_CLASS_INF:
		return FUNC3(xs);
	case IEEE754_CLASS_ZERO:
		return FUNC5(xs);
	case IEEE754_CLASS_DNORM:
		/* normalize */
		while ((xm >> SP_MBITS) == 0) {
			xm <<= 1;
			xe--;
		}
		break;
	case IEEE754_CLASS_NORM:
		break;
	}

	/* CANT possibly overflow,underflow, or need rounding
	 */

	/* drop the hidden bit */
	xm &= ~SP_HIDDEN_BIT;

	return FUNC1(xs, xe + DP_EBIAS,
		       (u64) xm << (DP_MBITS - SP_MBITS));
}
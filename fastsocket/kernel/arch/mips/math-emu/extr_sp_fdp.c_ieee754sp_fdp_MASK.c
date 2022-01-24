#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  ieee754sp ;
typedef  int /*<<< orphan*/  ieee754dp ;
struct TYPE_2__ {int /*<<< orphan*/  rm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEARCX ; 
 int /*<<< orphan*/  COMPXDP ; 
 int DP_MBITS ; 
 int /*<<< orphan*/  EXPLODEXDP ; 
 int /*<<< orphan*/  FLUSHXDP ; 
#define  IEEE754_CLASS_DNORM 133 
#define  IEEE754_CLASS_INF 132 
#define  IEEE754_CLASS_NORM 131 
#define  IEEE754_CLASS_QNAN 130 
#define  IEEE754_CLASS_SNAN 129 
#define  IEEE754_CLASS_ZERO 128 
 int /*<<< orphan*/  IEEE754_INEXACT ; 
 int /*<<< orphan*/  IEEE754_INVALID_OPERATION ; 
 int /*<<< orphan*/  IEEE754_RD ; 
 int /*<<< orphan*/  IEEE754_RU ; 
 int /*<<< orphan*/  IEEE754_UNDERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ SP_EBIAS ; 
 int /*<<< orphan*/  SP_EMAX ; 
 int SP_MBITS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 TYPE_1__ ieee754_csr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int xc ; 
 int /*<<< orphan*/  xe ; 
 int xm ; 
 int /*<<< orphan*/  xs ; 

ieee754sp FUNC10(ieee754dp x)
{
	COMPXDP;
	ieee754sp nan;

	EXPLODEXDP;

	CLEARCX;

	FLUSHXDP;

	switch (xc) {
	case IEEE754_CLASS_SNAN:
		FUNC0(IEEE754_INVALID_OPERATION);
		return FUNC7(FUNC3(), "fdp");
	case IEEE754_CLASS_QNAN:
		nan = FUNC2(xs, SP_EMAX + 1 + SP_EBIAS, (u32)
				(xm >> (DP_MBITS - SP_MBITS)));
		if (!FUNC5(nan))
			nan = FUNC3();
		return FUNC7(nan, "fdp", x);
	case IEEE754_CLASS_INF:
		return FUNC4(xs);
	case IEEE754_CLASS_ZERO:
		return FUNC9(xs);
	case IEEE754_CLASS_DNORM:
		/* can't possibly be sp representable */
		FUNC0(IEEE754_UNDERFLOW);
		FUNC0(IEEE754_INEXACT);
		if ((ieee754_csr.rm == IEEE754_RU && !xs) ||
				(ieee754_csr.rm == IEEE754_RD && xs))
			return FUNC8(FUNC6(xs), "fdp", x);
		return FUNC8(FUNC9(xs), "fdp", x);
	case IEEE754_CLASS_NORM:
		break;
	}

	{
		u32 rm;

		/* convert from DP_MBITS to SP_MBITS+3 with sticky right shift
		 */
		rm = (xm >> (DP_MBITS - (SP_MBITS + 3))) |
		    ((xm << (64 - (DP_MBITS - (SP_MBITS + 3)))) != 0);

		FUNC1(xs, xe, rm, "fdp", x);
	}
}
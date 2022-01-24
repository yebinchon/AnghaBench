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
typedef  int u64 ;
typedef  int /*<<< orphan*/  ieee754dp ;
struct TYPE_2__ {int rm; int mx; scalar_t__ nod; } ;

/* Variables and functions */
 scalar_t__ DP_EBIAS ; 
 int DP_EMAX ; 
 int DP_EMIN ; 
 int DP_HIDDEN_BIT ; 
 int FUNC0 (int) ; 
 int DP_MBITS ; 
 int IEEE754_INEXACT ; 
 int IEEE754_OVERFLOW ; 
#define  IEEE754_RD 131 
#define  IEEE754_RN 130 
#define  IEEE754_RU 129 
#define  IEEE754_RZ 128 
 int IEEE754_UNDERFLOW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,int) ; 
 int FUNC5 (int,int) ; 
 TYPE_1__ ieee754_csr ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

ieee754dp FUNC10(int sn, int xe, u64 xm)
{
	FUNC3(xm);		/* we don't gen exact zeros (probably should) */

	FUNC3((xm >> (DP_MBITS + 1 + 3)) == 0);	/* no execess */
	FUNC3(xm & (DP_HIDDEN_BIT << 3));

	if (xe < DP_EMIN) {
		/* strip lower bits */
		int es = DP_EMIN - xe;

		if (ieee754_csr.nod) {
			FUNC1(IEEE754_UNDERFLOW);
			FUNC1(IEEE754_INEXACT);

			switch(ieee754_csr.rm) {
			case IEEE754_RN:
				return FUNC9(sn);
			case IEEE754_RZ:
				return FUNC9(sn);
			case IEEE754_RU:    /* toward +Infinity */
				if(sn == 0)
					return FUNC8(0);
				else
					return FUNC9(1);
			case IEEE754_RD:    /* toward -Infinity */
				if(sn == 0)
					return FUNC9(0);
				else
					return FUNC8(1);
			}
		}

		if (xe == DP_EMIN - 1
				&& FUNC5(sn, xm) >> (DP_MBITS + 1 + 3))
		{
			/* Not tiny after rounding */
			FUNC1(IEEE754_INEXACT);
			xm = FUNC5(sn, xm);
			xm >>= 1;
			/* Clear grs bits */
			xm &= ~(FUNC0(3) - 1);
			xe++;
		}
		else {
			/* sticky right shift es bits
			 */
			xm = FUNC2(xm, es);
			xe += es;
			FUNC3((xm & (DP_HIDDEN_BIT << 3)) == 0);
			FUNC3(xe == DP_EMIN);
		}
	}
	if (xm & (FUNC0(3) - 1)) {
		FUNC1(IEEE754_INEXACT);
		if ((xm & (DP_HIDDEN_BIT << 3)) == 0) {
			FUNC1(IEEE754_UNDERFLOW);
		}

		/* inexact must round of 3 bits
		 */
		xm = FUNC5(sn, xm);
		/* adjust exponent for rounding add overflowing
		 */
		if (xm >> (DP_MBITS + 3 + 1)) {
			/* add causes mantissa overflow */
			xm >>= 1;
			xe++;
		}
	}
	/* strip grs bits */
	xm >>= 3;

	FUNC3((xm >> (DP_MBITS + 1)) == 0);	/* no execess */
	FUNC3(xe >= DP_EMIN);

	if (xe > DP_EMAX) {
		FUNC1(IEEE754_OVERFLOW);
		FUNC1(IEEE754_INEXACT);
		/* -O can be table indexed by (rm,sn) */
		switch (ieee754_csr.rm) {
		case IEEE754_RN:
			return FUNC6(sn);
		case IEEE754_RZ:
			return FUNC7(sn);
		case IEEE754_RU:	/* toward +Infinity */
			if (sn == 0)
				return FUNC6(0);
			else
				return FUNC7(1);
		case IEEE754_RD:	/* toward -Infinity */
			if (sn == 0)
				return FUNC7(0);
			else
				return FUNC6(1);
		}
	}
	/* gen norm/denorm/zero */

	if ((xm & DP_HIDDEN_BIT) == 0) {
		/* we underflow (tiny/zero) */
		FUNC3(xe == DP_EMIN);
		if (ieee754_csr.mx & IEEE754_UNDERFLOW)
			FUNC1(IEEE754_UNDERFLOW);
		return FUNC4(sn, DP_EMIN - 1 + DP_EBIAS, xm);
	} else {
		FUNC3((xm >> (DP_MBITS + 1)) == 0);	/* no execess */
		FUNC3(xm & DP_HIDDEN_BIT);

		return FUNC4(sn, xe + DP_EBIAS, xm & ~DP_HIDDEN_BIT);
	}
}
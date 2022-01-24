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
typedef  int /*<<< orphan*/  ieee754sp ;
struct TYPE_2__ {int rm; int mx; scalar_t__ nod; } ;

/* Variables and functions */
 int IEEE754_INEXACT ; 
 int IEEE754_OVERFLOW ; 
#define  IEEE754_RD 131 
#define  IEEE754_RN 130 
#define  IEEE754_RU 129 
#define  IEEE754_RZ 128 
 int IEEE754_UNDERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SP_EBIAS ; 
 int SP_EMAX ; 
 int SP_EMIN ; 
 int SP_HIDDEN_BIT ; 
 int FUNC2 (int) ; 
 int SP_MBITS ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,unsigned int) ; 
 int FUNC5 (int,unsigned int) ; 
 TYPE_1__ ieee754_csr ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

ieee754sp FUNC10(int sn, int xe, unsigned xm)
{
	FUNC3(xm);		/* we don't gen exact zeros (probably should) */

	FUNC3((xm >> (SP_MBITS + 1 + 3)) == 0);	/* no execess */
	FUNC3(xm & (SP_HIDDEN_BIT << 3));

	if (xe < SP_EMIN) {
		/* strip lower bits */
		int es = SP_EMIN - xe;

		if (ieee754_csr.nod) {
			FUNC0(IEEE754_UNDERFLOW);
			FUNC0(IEEE754_INEXACT);

			switch(ieee754_csr.rm) {
			case IEEE754_RN:
				return FUNC9(sn);
			case IEEE754_RZ:
				return FUNC9(sn);
			case IEEE754_RU:      /* toward +Infinity */
				if(sn == 0)
					return FUNC8(0);
				else
					return FUNC9(1);
			case IEEE754_RD:      /* toward -Infinity */
				if(sn == 0)
					return FUNC9(0);
				else
					return FUNC8(1);
			}
		}

		if (xe == SP_EMIN - 1
				&& FUNC5(sn, xm) >> (SP_MBITS + 1 + 3))
		{
			/* Not tiny after rounding */
			FUNC0(IEEE754_INEXACT);
			xm = FUNC5(sn, xm);
			xm >>= 1;
			/* Clear grs bits */
			xm &= ~(FUNC2(3) - 1);
			xe++;
		}
		else {
			/* sticky right shift es bits
			 */
			FUNC1(es);
			FUNC3((xm & (SP_HIDDEN_BIT << 3)) == 0);
			FUNC3(xe == SP_EMIN);
		}
	}
	if (xm & (FUNC2(3) - 1)) {
		FUNC0(IEEE754_INEXACT);
		if ((xm & (SP_HIDDEN_BIT << 3)) == 0) {
			FUNC0(IEEE754_UNDERFLOW);
		}

		/* inexact must round of 3 bits
		 */
		xm = FUNC5(sn, xm);
		/* adjust exponent for rounding add overflowing
		 */
		if (xm >> (SP_MBITS + 1 + 3)) {
			/* add causes mantissa overflow */
			xm >>= 1;
			xe++;
		}
	}
	/* strip grs bits */
	xm >>= 3;

	FUNC3((xm >> (SP_MBITS + 1)) == 0);	/* no execess */
	FUNC3(xe >= SP_EMIN);

	if (xe > SP_EMAX) {
		FUNC0(IEEE754_OVERFLOW);
		FUNC0(IEEE754_INEXACT);
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

	if ((xm & SP_HIDDEN_BIT) == 0) {
		/* we underflow (tiny/zero) */
		FUNC3(xe == SP_EMIN);
		if (ieee754_csr.mx & IEEE754_UNDERFLOW)
			FUNC0(IEEE754_UNDERFLOW);
		return FUNC4(sn, SP_EMIN - 1 + SP_EBIAS, xm);
	} else {
		FUNC3((xm >> (SP_MBITS + 1)) == 0);	/* no execess */
		FUNC3(xm & SP_HIDDEN_BIT);

		return FUNC4(sn, xe + SP_EBIAS, xm & ~SP_HIDDEN_BIT);
	}
}
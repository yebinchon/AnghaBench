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
typedef  scalar_t__ sbits32 ;
typedef  int int8 ;
typedef  int int16 ;
typedef  scalar_t__ float32 ;
typedef  int flag ;
typedef  int bits32 ;
typedef  int bits16 ;

/* Variables and functions */
 int FPSCR_CAUSE_INEXACT ; 
 int FPSCR_CAUSE_OVERFLOW ; 
 int FPSCR_CAUSE_UNDERFLOW ; 
 scalar_t__ FPSCR_RM_NEAREST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int*) ; 

__attribute__((used)) static float32 FUNC4(flag zSign, int16 zExp, bits32 zSig)
{
	flag roundNearestEven;
	int8 roundIncrement, roundBits;
	flag isTiny;

	/* SH4 has only 2 rounding modes - round to nearest and round to zero */
	roundNearestEven = (FUNC1() == FPSCR_RM_NEAREST);
	roundIncrement = 0x40;
	if (!roundNearestEven) {
		roundIncrement = 0;
	}
	roundBits = zSig & 0x7F;
	if (0xFD <= (bits16) zExp) {
		if ((0xFD < zExp)
		    || ((zExp == 0xFD)
			&& ((sbits32) (zSig + roundIncrement) < 0))
		    ) {
			FUNC0(FPSCR_CAUSE_OVERFLOW | FPSCR_CAUSE_INEXACT);
			return FUNC2(zSign, 0xFF,
					   0) - (roundIncrement == 0);
		}
		if (zExp < 0) {
			isTiny = (zExp < -1)
			    || (zSig + roundIncrement < 0x80000000);
			FUNC3(zSig, -zExp, &zSig);
			zExp = 0;
			roundBits = zSig & 0x7F;
			if (isTiny && roundBits)
				FUNC0(FPSCR_CAUSE_UNDERFLOW);
		}
	}
	if (roundBits)
		FUNC0(FPSCR_CAUSE_INEXACT);
	zSig = (zSig + roundIncrement) >> 7;
	zSig &= ~(((roundBits ^ 0x40) == 0) & roundNearestEven);
	if (zSig == 0)
		zExp = 0;
	return FUNC2(zSign, zExp, zSig);

}
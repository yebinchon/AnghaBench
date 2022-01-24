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
typedef  int int16 ;
typedef  int /*<<< orphan*/  float64 ;
typedef  int flag ;
typedef  int bits64 ;

/* Variables and functions */
 scalar_t__ FPSCR_RM_ZERO ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int*) ; 

__attribute__((used)) static float64 FUNC7(float64 a, float64 b, flag zSign)
{
	int16 aExp, bExp, zExp;
	bits64 aSig, bSig, zSig;
	int16 expDiff;

	aSig = FUNC2(a);
	aExp = FUNC1(a);
	bSig = FUNC2(b);
	bExp = FUNC1(b);
	expDiff = aExp - bExp;
	aSig <<= 10;
	bSig <<= 10;
	if (0 < expDiff)
		goto aExpBigger;
	if (expDiff < 0)
		goto bExpBigger;
	if (aExp == 0) {
		aExp = 1;
		bExp = 1;
	}
	if (bSig < aSig)
		goto aBigger;
	if (aSig < bSig)
		goto bBigger;
	return FUNC5(FUNC3() == FPSCR_RM_ZERO, 0, 0);
      bExpBigger:
	if (bExp == 0x7FF) {
		return FUNC5(zSign ^ 1, 0x7FF, 0);
	}
	if (aExp == 0) {
		++expDiff;
	} else {
		aSig |= FUNC0(0x4000000000000000);
	}
	FUNC6(aSig, -expDiff, &aSig);
	bSig |= FUNC0(0x4000000000000000);
      bBigger:
	zSig = bSig - aSig;
	zExp = bExp;
	zSign ^= 1;
	goto normalizeRoundAndPack;
      aExpBigger:
	if (aExp == 0x7FF) {
		return a;
	}
	if (bExp == 0) {
		--expDiff;
	} else {
		bSig |= FUNC0(0x4000000000000000);
	}
	FUNC6(bSig, expDiff, &bSig);
	aSig |= FUNC0(0x4000000000000000);
      aBigger:
	zSig = aSig - bSig;
	zExp = aExp;
      normalizeRoundAndPack:
	--zExp;
	return FUNC4(zSign, zExp, zSig);

}
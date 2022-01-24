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
typedef  scalar_t__ sbits64 ;
typedef  int int16 ;
typedef  int /*<<< orphan*/  float64 ;
typedef  int /*<<< orphan*/  flag ;
typedef  int bits64 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int*) ; 

__attribute__((used)) static float64 FUNC6(float64 a, float64 b, flag zSign)
{
	int16 aExp, bExp, zExp;
	bits64 aSig, bSig, zSig;
	int16 expDiff;

	aSig = FUNC2(a);
	aExp = FUNC1(a);
	bSig = FUNC2(b);
	bExp = FUNC1(b);
	expDiff = aExp - bExp;
	aSig <<= 9;
	bSig <<= 9;
	if (0 < expDiff) {
		if (aExp == 0x7FF) {
			return a;
		}
		if (bExp == 0) {
			--expDiff;
		} else {
			bSig |= FUNC0(0x2000000000000000);
		}
		FUNC5(bSig, expDiff, &bSig);
		zExp = aExp;
	} else if (expDiff < 0) {
		if (bExp == 0x7FF) {
			return FUNC3(zSign, 0x7FF, 0);
		}
		if (aExp == 0) {
			++expDiff;
		} else {
			aSig |= FUNC0(0x2000000000000000);
		}
		FUNC5(aSig, -expDiff, &aSig);
		zExp = bExp;
	} else {
		if (aExp == 0x7FF) {
			return a;
		}
		if (aExp == 0)
			return FUNC3(zSign, 0, (aSig + bSig) >> 9);
		zSig = FUNC0(0x4000000000000000) + aSig + bSig;
		zExp = aExp;
		goto roundAndPack;
	}
	aSig |= FUNC0(0x2000000000000000);
	zSig = (aSig + bSig) << 1;
	--zExp;
	if ((sbits64) zSig < 0) {
		zSig = aSig + bSig;
		++zExp;
	}
      roundAndPack:
	return FUNC4(zSign, zExp, zSig);

}
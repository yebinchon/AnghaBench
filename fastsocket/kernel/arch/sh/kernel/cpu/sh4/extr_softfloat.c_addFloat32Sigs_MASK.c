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
typedef  int int16 ;
typedef  int /*<<< orphan*/  float32 ;
typedef  int /*<<< orphan*/  flag ;
typedef  int bits32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int*) ; 

__attribute__((used)) static float32 FUNC5(float32 a, float32 b, flag zSign)
{
	int16 aExp, bExp, zExp;
	bits32 aSig, bSig, zSig;
	int16 expDiff;

	aSig = FUNC1(a);
	aExp = FUNC0(a);
	bSig = FUNC1(b);
	bExp = FUNC0(b);
	expDiff = aExp - bExp;
	aSig <<= 6;
	bSig <<= 6;
	if (0 < expDiff) {
		if (aExp == 0xFF) {
			return a;
		}
		if (bExp == 0) {
			--expDiff;
		} else {
			bSig |= 0x20000000;
		}
		FUNC4(bSig, expDiff, &bSig);
		zExp = aExp;
	} else if (expDiff < 0) {
		if (bExp == 0xFF) {
			return FUNC2(zSign, 0xFF, 0);
		}
		if (aExp == 0) {
			++expDiff;
		} else {
			aSig |= 0x20000000;
		}
		FUNC4(aSig, -expDiff, &aSig);
		zExp = bExp;
	} else {
		if (aExp == 0xFF) {
			return a;
		}
		if (aExp == 0)
			return FUNC2(zSign, 0, (aSig + bSig) >> 6);
		zSig = 0x40000000 + aSig + bSig;
		zExp = aExp;
		goto roundAndPack;
	}
	aSig |= 0x20000000;
	zSig = (aSig + bSig) << 1;
	--zExp;
	if ((sbits32) zSig < 0) {
		zSig = aSig + bSig;
		++zExp;
	}
      roundAndPack:
	return FUNC3(zSign, zExp, zSig);

}
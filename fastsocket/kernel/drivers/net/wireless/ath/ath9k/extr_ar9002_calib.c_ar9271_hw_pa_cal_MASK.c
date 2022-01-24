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
struct TYPE_2__ {int prev_offset; int max_skipcount; int skipcount; } ;
struct ath_hw {TYPE_1__ pacal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9271_AN_RF2G3_CCOMP ; 
 int /*<<< orphan*/  AR9271_AN_RF2G6_OFFS ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_ENPACAL ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_PDPADRV1 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_PDPADRV2 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G1_PDPAOUT ; 
 int /*<<< orphan*/  AR9285_AN_RF2G2 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G2_OFFCAL ; 
 int /*<<< orphan*/  AR9285_AN_RF2G3 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G6 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G7 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G7_PADRVGN2TAB0 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G7_PWDDB ; 
 int /*<<< orphan*/  AR9285_AN_RF2G8 ; 
 int /*<<< orphan*/  AR9285_AN_RF2G8_PADRVGN2TAB0 ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1 ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_PDDACIF ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_PDRXTXBB1 ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_PDV2I ; 
 int /*<<< orphan*/  AR9285_AN_RXTXBB1_SPARE9 ; 
 int AR9285_AN_TOP2 ; 
 int /*<<< orphan*/  AR9285_AN_TOP3 ; 
 int /*<<< orphan*/  AR9285_AN_TOP3_PWDDAC ; 
 unsigned int FUNC0 (int**) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int MAX_PACAL_SKIPCOUNT ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int FUNC4 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct ath_hw *ah, bool is_reset)
{
	u32 regVal;
	unsigned int i;
	u32 regList[][2] = {
		{ 0x786c, 0 },
		{ 0x7854, 0 },
		{ 0x7820, 0 },
		{ 0x7824, 0 },
		{ 0x7868, 0 },
		{ 0x783c, 0 },
		{ 0x7838, 0 } ,
		{ 0x7828, 0 } ,
	};

	for (i = 0; i < FUNC0(regList); i++)
		regList[i][1] = FUNC4(ah, regList[i][0]);

	regVal = FUNC4(ah, 0x7834);
	regVal &= (~(0x1));
	FUNC6(ah, 0x7834, regVal);
	regVal = FUNC4(ah, 0x9808);
	regVal |= (0x1 << 27);
	FUNC6(ah, 0x9808, regVal);

	/* 786c,b23,1, pwddac=1 */
	FUNC5(ah, AR9285_AN_TOP3, AR9285_AN_TOP3_PWDDAC, 1);
	/* 7854, b5,1, pdrxtxbb=1 */
	FUNC5(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDRXTXBB1, 1);
	/* 7854, b7,1, pdv2i=1 */
	FUNC5(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDV2I, 1);
	/* 7854, b8,1, pddacinterface=1 */
	FUNC5(ah, AR9285_AN_RXTXBB1, AR9285_AN_RXTXBB1_PDDACIF, 1);
	/* 7824,b12,0, offcal=0 */
	FUNC5(ah, AR9285_AN_RF2G2, AR9285_AN_RF2G2_OFFCAL, 0);
	/* 7838, b1,0, pwddb=0 */
	FUNC5(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PWDDB, 0);
	/* 7820,b11,0, enpacal=0 */
	FUNC5(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_ENPACAL, 0);
	/* 7820,b25,1, pdpadrv1=0 */
	FUNC5(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV1, 0);
	/* 7820,b24,0, pdpadrv2=0 */
	FUNC5(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPADRV2, 0);
	/* 7820,b23,0, pdpaout=0 */
	FUNC5(ah, AR9285_AN_RF2G1, AR9285_AN_RF2G1_PDPAOUT, 0);
	/* 783c,b14-16,7, padrvgn2tab_0=7 */
	FUNC5(ah, AR9285_AN_RF2G8, AR9285_AN_RF2G8_PADRVGN2TAB0, 7);
	/*
	 * 7838,b29-31,0, padrvgn1tab_0=0
	 * does not matter since we turn it off
	 */
	FUNC5(ah, AR9285_AN_RF2G7, AR9285_AN_RF2G7_PADRVGN2TAB0, 0);

	FUNC5(ah, AR9285_AN_RF2G3, AR9271_AN_RF2G3_CCOMP, 0xfff);

	/* Set:
	 * localmode=1,bmode=1,bmoderxtx=1,synthon=1,
	 * txon=1,paon=1,oscon=1,synthon_force=1
	 */
	FUNC6(ah, AR9285_AN_TOP2, 0xca0358a0);
	FUNC7(30);
	FUNC5(ah, AR9285_AN_RF2G6, AR9271_AN_RF2G6_OFFS, 0);

	/* find off_6_1; */
	for (i = 6; i > 0; i--) {
		regVal = FUNC4(ah, 0x7834);
		regVal |= (1 << (20 + i));
		FUNC6(ah, 0x7834, regVal);
		FUNC7(1);
		/* regVal = REG_READ(ah, 0x7834); */
		regVal &= (~(0x1 << (20 + i)));
		regVal |= (FUNC2(FUNC4(ah, 0x7840), AR9285_AN_RXTXBB1_SPARE9)
			    << (20 + i));
		FUNC6(ah, 0x7834, regVal);
	}

	regVal = (regVal >> 20) & 0x7f;

	/* Update PA cal info */
	if ((!is_reset) && (ah->pacal_info.prev_offset == regVal)) {
		if (ah->pacal_info.max_skipcount < MAX_PACAL_SKIPCOUNT)
			ah->pacal_info.max_skipcount =
				2 * ah->pacal_info.max_skipcount;
		ah->pacal_info.skipcount = ah->pacal_info.max_skipcount;
	} else {
		ah->pacal_info.max_skipcount = 1;
		ah->pacal_info.skipcount = 0;
		ah->pacal_info.prev_offset = regVal;
	}

	FUNC1(ah);

	regVal = FUNC4(ah, 0x7834);
	regVal |= 0x1;
	FUNC6(ah, 0x7834, regVal);
	regVal = FUNC4(ah, 0x9808);
	regVal &= (~(0x1 << 27));
	FUNC6(ah, 0x9808, regVal);

	for (i = 0; i < FUNC0(regList); i++)
		FUNC6(ah, regList[i][0], regList[i][1]);

	FUNC3(ah);
}
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
typedef  int u16 ;
struct brcms_phy {scalar_t__ bw; int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** NPHY_IPA_REV4_txdigi_filtcoeffs ; 
 int NPHY_NUM_DIG_FILT_COEFFS ; 
 scalar_t__ WL_CHANSPEC_BW_40 ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct brcms_phy *pi)
{
	int j, type;
	u16 addr_offset[] = { 0x186, 0x195, 0x2c5};

	for (type = 0; type < 3; type++) {
		for (j = 0; j < NPHY_NUM_DIG_FILT_COEFFS; j++)
			FUNC2(pi, addr_offset[type] + j,
				      NPHY_IPA_REV4_txdigi_filtcoeffs[type][j]);
	}

	if (pi->bw == WL_CHANSPEC_BW_40) {
		for (j = 0; j < NPHY_NUM_DIG_FILT_COEFFS; j++)
			FUNC2(pi, 0x186 + j,
				      NPHY_IPA_REV4_txdigi_filtcoeffs[3][j]);
	} else {
		if (FUNC1(pi->radio_chanspec)) {
			for (j = 0; j < NPHY_NUM_DIG_FILT_COEFFS; j++)
				FUNC2(pi, 0x186 + j,
					NPHY_IPA_REV4_txdigi_filtcoeffs[5][j]);
		}

		if (FUNC0(pi->radio_chanspec) == 14) {
			for (j = 0; j < NPHY_NUM_DIG_FILT_COEFFS; j++)
				FUNC2(pi, 0x2c5 + j,
					NPHY_IPA_REV4_txdigi_filtcoeffs[6][j]);
		}
	}
}
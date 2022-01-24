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
typedef  int u_int32_t ;
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int AR9285_CLCAL_REDO_THRESH ; 
 scalar_t__ AR9285_RF2G5 ; 
 int AR9285_RF2G5_IC50TX ; 
 int AR9285_RF2G5_IC50TX_SET ; 
 int AR9285_RF2G5_IC50TX_XE_SET ; 
 int AR_PHY_CLC_I0 ; 
 int AR_PHY_CLC_I0_S ; 
 int AR_PHY_CLC_Q0 ; 
 int AR_PHY_CLC_Q0_S ; 
 scalar_t__ AR_PHY_CLC_TBL1 ; 
 int AR_PHY_TX_GAIN_CLC ; 
 int AR_PHY_TX_GAIN_CLC_S ; 
 scalar_t__ AR_PHY_TX_GAIN_TBL1 ; 
 scalar_t__ AR_PHY_TX_PWRCTRL7 ; 
 int /*<<< orphan*/  AR_PHY_TX_PWRCTRL_TX_GAIN_TAB_MAX ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,scalar_t__,int) ; 
 int FUNC4 (struct ath_hw*,struct ath9k_channel*) ; 

__attribute__((used)) static bool FUNC5(struct ath_hw *ah, struct ath9k_channel *chan)
{
	int i;
	u_int32_t txgain_max;
	u_int32_t clc_gain, gain_mask = 0, clc_num = 0;
	u_int32_t reg_clc_I0, reg_clc_Q0;
	u_int32_t i0_num = 0;
	u_int32_t q0_num = 0;
	u_int32_t total_num = 0;
	u_int32_t reg_rf2g5_org;
	bool retv = true;

	if (!(FUNC4(ah, chan)))
		return false;

	txgain_max = FUNC1(FUNC2(ah, AR_PHY_TX_PWRCTRL7),
			AR_PHY_TX_PWRCTRL_TX_GAIN_TAB_MAX);

	for (i = 0; i < (txgain_max+1); i++) {
		clc_gain = (FUNC2(ah, (AR_PHY_TX_GAIN_TBL1+(i<<2))) &
			   AR_PHY_TX_GAIN_CLC) >> AR_PHY_TX_GAIN_CLC_S;
		if (!(gain_mask & (1 << clc_gain))) {
			gain_mask |= (1 << clc_gain);
			clc_num++;
		}
	}

	for (i = 0; i < clc_num; i++) {
		reg_clc_I0 = (FUNC2(ah, (AR_PHY_CLC_TBL1 + (i << 2)))
			      & AR_PHY_CLC_I0) >> AR_PHY_CLC_I0_S;
		reg_clc_Q0 = (FUNC2(ah, (AR_PHY_CLC_TBL1 + (i << 2)))
			      & AR_PHY_CLC_Q0) >> AR_PHY_CLC_Q0_S;
		if (reg_clc_I0 == 0)
			i0_num++;

		if (reg_clc_Q0 == 0)
			q0_num++;
	}
	total_num = i0_num + q0_num;
	if (total_num > AR9285_CLCAL_REDO_THRESH) {
		reg_rf2g5_org = FUNC2(ah, AR9285_RF2G5);
		if (FUNC0(ah)) {
			FUNC3(ah, AR9285_RF2G5,
				  (reg_rf2g5_org & AR9285_RF2G5_IC50TX) |
				  AR9285_RF2G5_IC50TX_XE_SET);
		} else {
			FUNC3(ah, AR9285_RF2G5,
				  (reg_rf2g5_org & AR9285_RF2G5_IC50TX) |
				  AR9285_RF2G5_IC50TX_SET);
		}
		retv = FUNC4(ah, chan);
		FUNC3(ah, AR9285_RF2G5, reg_rf2g5_org);
	}
	return retv;
}
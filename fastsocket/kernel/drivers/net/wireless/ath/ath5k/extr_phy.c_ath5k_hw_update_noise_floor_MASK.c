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
typedef  size_t u8 ;
typedef  int u32 ;
struct ath5k_eeprom_info {int* ee_noise_floor_thr; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {int ah_noise_floor; int /*<<< orphan*/  ah_cal_mask; int /*<<< orphan*/  ah_current_channel; TYPE_1__ ah_capabilities; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_CALIBRATION_NF ; 
 int /*<<< orphan*/  AR5K_PHY_AGCCTL ; 
 int AR5K_PHY_AGCCTL_NF ; 
 int AR5K_PHY_AGCCTL_NF_EN ; 
 int AR5K_PHY_AGCCTL_NF_NOUPDATE ; 
 int /*<<< orphan*/  AR5K_PHY_NF ; 
 int AR5K_PHY_NF_M ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int,int) ; 
 int AR5K_TUNE_CCA_MAX_GOOD_VALUE ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_CALIBRATE ; 
 size_t FUNC3 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath5k_hw*) ; 
 int FUNC5 (struct ath5k_hw*) ; 
 int FUNC6 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath5k_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath5k_hw*,int) ; 

void
FUNC10(struct ath5k_hw *ah)
{
	struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
	u32 val;
	s16 nf, threshold;
	u8 ee_mode;

	/* keep last value if calibration hasn't completed */
	if (FUNC6(ah, AR5K_PHY_AGCCTL) & AR5K_PHY_AGCCTL_NF) {
		FUNC2(ah, ATH5K_DEBUG_CALIBRATE,
			"NF did not complete in calibration window\n");

		return;
	}

	ah->ah_cal_mask |= AR5K_CALIBRATION_NF;

	ee_mode = FUNC3(ah, ah->ah_current_channel);

	/* completed NF calibration, test threshold */
	nf = FUNC5(ah);
	threshold = ee->ee_noise_floor_thr[ee_mode];

	if (nf > threshold) {
		FUNC2(ah, ATH5K_DEBUG_CALIBRATE,
			"noise floor failure detected; "
			"read %d, threshold %d\n",
			nf, threshold);

		nf = AR5K_TUNE_CCA_MAX_GOOD_VALUE;
	}

	FUNC9(ah, nf);
	nf = FUNC4(ah);

	/* load noise floor (in .5 dBm) so the hardware will use it */
	val = FUNC6(ah, AR5K_PHY_NF) & ~AR5K_PHY_NF_M;
	val |= (nf * 2) & AR5K_PHY_NF_M;
	FUNC7(ah, val, AR5K_PHY_NF);

	FUNC1(ah, AR5K_PHY_AGCCTL, AR5K_PHY_AGCCTL_NF,
		~(AR5K_PHY_AGCCTL_NF_EN | AR5K_PHY_AGCCTL_NF_NOUPDATE));

	FUNC8(ah, AR5K_PHY_AGCCTL, AR5K_PHY_AGCCTL_NF,
		0, false);

	/*
	 * Load a high max CCA Power value (-50 dBm in .5 dBm units)
	 * so that we're not capped by the median we just loaded.
	 * This will be used as the initial value for the next noise
	 * floor calibration.
	 */
	val = (val & ~AR5K_PHY_NF_M) | ((-50 * 2) & AR5K_PHY_NF_M);
	FUNC7(ah, val, AR5K_PHY_NF);
	FUNC0(ah, AR5K_PHY_AGCCTL,
		AR5K_PHY_AGCCTL_NF_EN |
		AR5K_PHY_AGCCTL_NF_NOUPDATE |
		AR5K_PHY_AGCCTL_NF);

	ah->ah_noise_floor = nf;

	ah->ah_cal_mask &= ~AR5K_CALIBRATION_NF;

	FUNC2(ah, ATH5K_DEBUG_CALIBRATE,
		"noise floor calibrated: %d\n", nf);
}
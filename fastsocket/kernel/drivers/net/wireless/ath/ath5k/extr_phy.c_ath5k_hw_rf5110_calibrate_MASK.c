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
typedef  int u32 ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
struct ath5k_hw {int ah_cal_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_BEACON_5210 ; 
 int AR5K_BEACON_ENABLE ; 
 int AR5K_CALIBRATION_FULL ; 
 int /*<<< orphan*/  AR5K_DIAG_SW_5210 ; 
 int AR5K_DIAG_SW_DIS_RX_5210 ; 
 int AR5K_DIAG_SW_DIS_TX_5210 ; 
 int /*<<< orphan*/  AR5K_PHY_ACT ; 
 int AR5K_PHY_ACT_ENABLE ; 
 int /*<<< orphan*/  AR5K_PHY_ADCSAT ; 
 int AR5K_PHY_ADCSAT_ICNT ; 
 int AR5K_PHY_ADCSAT_THR ; 
 int /*<<< orphan*/  AR5K_PHY_AGC ; 
 int /*<<< orphan*/  AR5K_PHY_AGCCOARSE ; 
 int AR5K_PHY_AGCCOARSE_HI ; 
 int AR5K_PHY_AGCCOARSE_LO ; 
 int /*<<< orphan*/  AR5K_PHY_AGCCTL ; 
 int AR5K_PHY_AGCCTL_CAL ; 
 int AR5K_PHY_AGC_DISABLE ; 
 int /*<<< orphan*/  AR5K_PHY_RFSTG ; 
 int AR5K_PHY_RFSTG_DISABLE ; 
 int /*<<< orphan*/  AR5K_PHY_SIG ; 
 int AR5K_PHY_SIG_FIRPWR ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath5k_hw*,struct ieee80211_channel*) ; 
 int FUNC5 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ath5k_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int
FUNC10(struct ath5k_hw *ah,
		struct ieee80211_channel *channel)
{
	u32 phy_sig, phy_agc, phy_sat, beacon;
	int ret;

	if (!(ah->ah_cal_mask & AR5K_CALIBRATION_FULL))
		return 0;

	/*
	 * Disable beacons and RX/TX queues, wait
	 */
	FUNC1(ah, AR5K_DIAG_SW_5210,
		AR5K_DIAG_SW_DIS_TX_5210 | AR5K_DIAG_SW_DIS_RX_5210);
	beacon = FUNC5(ah, AR5K_BEACON_5210);
	FUNC6(ah, beacon & ~AR5K_BEACON_ENABLE, AR5K_BEACON_5210);

	FUNC9(2000, 2500);

	/*
	 * Set the channel (with AGC turned off)
	 */
	FUNC1(ah, AR5K_PHY_AGC, AR5K_PHY_AGC_DISABLE);
	FUNC8(10);
	ret = FUNC4(ah, channel);

	/*
	 * Activate PHY and wait
	 */
	FUNC6(ah, AR5K_PHY_ACT_ENABLE, AR5K_PHY_ACT);
	FUNC9(1000, 1500);

	FUNC0(ah, AR5K_PHY_AGC, AR5K_PHY_AGC_DISABLE);

	if (ret)
		return ret;

	/*
	 * Calibrate the radio chip
	 */

	/* Remember normal state */
	phy_sig = FUNC5(ah, AR5K_PHY_SIG);
	phy_agc = FUNC5(ah, AR5K_PHY_AGCCOARSE);
	phy_sat = FUNC5(ah, AR5K_PHY_ADCSAT);

	/* Update radio registers */
	FUNC6(ah, (phy_sig & ~(AR5K_PHY_SIG_FIRPWR)) |
		FUNC2(-1, AR5K_PHY_SIG_FIRPWR), AR5K_PHY_SIG);

	FUNC6(ah, (phy_agc & ~(AR5K_PHY_AGCCOARSE_HI |
			AR5K_PHY_AGCCOARSE_LO)) |
		FUNC2(-1, AR5K_PHY_AGCCOARSE_HI) |
		FUNC2(-127, AR5K_PHY_AGCCOARSE_LO), AR5K_PHY_AGCCOARSE);

	FUNC6(ah, (phy_sat & ~(AR5K_PHY_ADCSAT_ICNT |
			AR5K_PHY_ADCSAT_THR)) |
		FUNC2(2, AR5K_PHY_ADCSAT_ICNT) |
		FUNC2(12, AR5K_PHY_ADCSAT_THR), AR5K_PHY_ADCSAT);

	FUNC8(20);

	FUNC1(ah, AR5K_PHY_AGC, AR5K_PHY_AGC_DISABLE);
	FUNC8(10);
	FUNC6(ah, AR5K_PHY_RFSTG_DISABLE, AR5K_PHY_RFSTG);
	FUNC0(ah, AR5K_PHY_AGC, AR5K_PHY_AGC_DISABLE);

	FUNC9(1000, 1500);

	/*
	 * Enable calibration and wait until completion
	 */
	FUNC1(ah, AR5K_PHY_AGCCTL, AR5K_PHY_AGCCTL_CAL);

	ret = FUNC7(ah, AR5K_PHY_AGCCTL,
			AR5K_PHY_AGCCTL_CAL, 0, false);

	/* Reset to normal state */
	FUNC6(ah, phy_sig, AR5K_PHY_SIG);
	FUNC6(ah, phy_agc, AR5K_PHY_AGCCOARSE);
	FUNC6(ah, phy_sat, AR5K_PHY_ADCSAT);

	if (ret) {
		FUNC3(ah, "calibration timeout (%uMHz)\n",
				channel->center_freq);
		return ret;
	}

	/*
	 * Re-enable RX/TX and beacons
	 */
	FUNC0(ah, AR5K_DIAG_SW_5210,
		AR5K_DIAG_SW_DIS_TX_5210 | AR5K_DIAG_SW_DIS_RX_5210);
	FUNC6(ah, beacon, AR5K_BEACON_5210);

	return 0;
}
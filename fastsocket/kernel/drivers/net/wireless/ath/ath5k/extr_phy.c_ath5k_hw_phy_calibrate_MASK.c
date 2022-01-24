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
struct ieee80211_channel {scalar_t__ hw_value; int /*<<< orphan*/  center_freq; } ;
struct ath5k_hw {scalar_t__ ah_radio; int ah_cal_mask; } ;

/* Variables and functions */
 int AR5K_CALIBRATION_FULL ; 
 int AR5K_CALIBRATION_NF ; 
 scalar_t__ AR5K_MODE_11B ; 
 scalar_t__ AR5K_RF5110 ; 
 scalar_t__ AR5K_RF5111 ; 
 scalar_t__ AR5K_RF5112 ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_CALIBRATE ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*) ; 
 int FUNC2 (struct ath5k_hw*,struct ieee80211_channel*) ; 
 int FUNC3 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*) ; 

int
FUNC5(struct ath5k_hw *ah,
		struct ieee80211_channel *channel)
{
	int ret;

	if (ah->ah_radio == AR5K_RF5110)
		return FUNC2(ah, channel);

	ret = FUNC3(ah);
	if (ret) {
		FUNC0(ah, ATH5K_DEBUG_CALIBRATE,
			"No I/Q correction performed (%uMHz)\n",
			channel->center_freq);

		/* Happens all the time if there is not much
		 * traffic, consider it normal behaviour. */
		ret = 0;
	}

	/* On full calibration request a PAPD probe for
	 * gainf calibration if needed */
	if ((ah->ah_cal_mask & AR5K_CALIBRATION_FULL) &&
	    (ah->ah_radio == AR5K_RF5111 ||
	     ah->ah_radio == AR5K_RF5112) &&
	    channel->hw_value != AR5K_MODE_11B)
		FUNC1(ah);

	/* Update noise floor */
	if (!(ah->ah_cal_mask & AR5K_CALIBRATION_NF))
		FUNC4(ah);

	return ret;
}
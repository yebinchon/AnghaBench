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
struct ieee80211_channel {int center_freq; } ;
struct ath5k_hw {int ah_radio; struct ieee80211_channel* ah_current_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_PHY_CCKTXCTL ; 
 int /*<<< orphan*/  AR5K_PHY_CCKTXCTL_JAPAN ; 
 int /*<<< orphan*/  AR5K_PHY_CCKTXCTL_WORLD ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  AR5K_RF2317 131 
#define  AR5K_RF2425 130 
#define  AR5K_RF5110 129 
#define  AR5K_RF5111 128 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,struct ieee80211_channel*) ; 
 int FUNC3 (struct ath5k_hw*,struct ieee80211_channel*) ; 
 int FUNC4 (struct ath5k_hw*,struct ieee80211_channel*) ; 
 int FUNC5 (struct ath5k_hw*,struct ieee80211_channel*) ; 
 int FUNC6 (struct ath5k_hw*,struct ieee80211_channel*) ; 

__attribute__((used)) static int
FUNC7(struct ath5k_hw *ah,
		struct ieee80211_channel *channel)
{
	int ret;
	/*
	 * Check bounds supported by the PHY (we don't care about regulatory
	 * restrictions at this point).
	 */
	if (!FUNC2(ah, channel)) {
		FUNC1(ah,
			"channel frequency (%u MHz) out of supported "
			"band range\n",
			channel->center_freq);
			return -EINVAL;
	}

	/*
	 * Set the channel and wait
	 */
	switch (ah->ah_radio) {
	case AR5K_RF5110:
		ret = FUNC4(ah, channel);
		break;
	case AR5K_RF5111:
		ret = FUNC5(ah, channel);
		break;
	case AR5K_RF2317:
	case AR5K_RF2425:
		ret = FUNC3(ah, channel);
		break;
	default:
		ret = FUNC6(ah, channel);
		break;
	}

	if (ret)
		return ret;

	/* Set JAPAN setting for channel 14 */
	if (channel->center_freq == 2484) {
		FUNC0(ah, AR5K_PHY_CCKTXCTL,
				AR5K_PHY_CCKTXCTL_JAPAN);
	} else {
		FUNC0(ah, AR5K_PHY_CCKTXCTL,
				AR5K_PHY_CCKTXCTL_WORLD);
	}

	ah->ah_current_channel = channel;

	return 0;
}
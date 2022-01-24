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
struct ieee80211_tx_rate {int flags; int idx; } ;
struct ieee80211_tx_info {scalar_t__ band; } ;
struct ar9170 {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int AR9170_TX_PHY_BW_40MHZ ; 
 int AR9170_TX_PHY_BW_40MHZ_DUP ; 
 int AR9170_TX_PHY_BW_S ; 
 int /*<<< orphan*/  AR9170_TX_PHY_MCS ; 
 int AR9170_TX_PHY_MOD_CCK ; 
 int AR9170_TX_PHY_MOD_HT ; 
 int AR9170_TX_PHY_MOD_OFDM ; 
 int AR9170_TX_PHY_RATE_CCK_11M ; 
 int AR9170_TX_PHY_SHORT_GI ; 
 int /*<<< orphan*/  AR9170_TX_PHY_TXCHAIN ; 
 int AR9170_TX_PHY_TX_HEAVY_CLIP_S ; 
 int /*<<< orphan*/  AR9170_TX_PHY_TX_PWR ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 int IEEE80211_TX_RC_40_MHZ_WIDTH ; 
 int IEEE80211_TX_RC_DUP_DATA ; 
 int IEEE80211_TX_RC_MCS ; 
 int IEEE80211_TX_RC_SHORT_GI ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*,struct ieee80211_tx_info*,struct ieee80211_tx_rate*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static __le32 FUNC4(struct ar9170 *ar,
	struct ieee80211_tx_info *info, struct ieee80211_tx_rate *txrate)
{
	unsigned int power = 0, chains = 0, phyrate = 0;
	__le32 tmp;

	tmp = FUNC3(0);

	if (txrate->flags & IEEE80211_TX_RC_40_MHZ_WIDTH)
		tmp |= FUNC3(AR9170_TX_PHY_BW_40MHZ <<
			AR9170_TX_PHY_BW_S);
	/* this works because 40 MHz is 2 and dup is 3 */
	if (txrate->flags & IEEE80211_TX_RC_DUP_DATA)
		tmp |= FUNC3(AR9170_TX_PHY_BW_40MHZ_DUP <<
			AR9170_TX_PHY_BW_S);

	if (txrate->flags & IEEE80211_TX_RC_SHORT_GI)
		tmp |= FUNC3(AR9170_TX_PHY_SHORT_GI);

	if (txrate->flags & IEEE80211_TX_RC_MCS) {
		FUNC1(AR9170_TX_PHY_MCS, phyrate, txrate->idx);

		/* heavy clip control */
		tmp |= FUNC3((txrate->idx & 0x7) <<
			AR9170_TX_PHY_TX_HEAVY_CLIP_S);

		tmp |= FUNC3(AR9170_TX_PHY_MOD_HT);

		/*
		 * green field preamble does not work.
		 *
		 * if (txrate->flags & IEEE80211_TX_RC_GREEN_FIELD)
		 * tmp |= cpu_to_le32(AR9170_TX_PHY_GREENFIELD);
		 */
	} else {
		if (info->band == IEEE80211_BAND_2GHZ) {
			if (txrate->idx <= AR9170_TX_PHY_RATE_CCK_11M)
				tmp |= FUNC3(AR9170_TX_PHY_MOD_CCK);
			else
				tmp |= FUNC3(AR9170_TX_PHY_MOD_OFDM);
		} else {
			tmp |= FUNC3(AR9170_TX_PHY_MOD_OFDM);
		}

		/*
		 * short preamble seems to be broken too.
		 *
		 * if (txrate->flags & IEEE80211_TX_RC_USE_SHORT_PREAMBLE)
		 *	tmp |= cpu_to_le32(AR9170_TX_PHY_SHORT_PREAMBLE);
		 */
	}
	FUNC2(ar, info, txrate,
				    &phyrate, &power, &chains);

	tmp |= FUNC3(FUNC0(AR9170_TX_PHY_MCS, phyrate));
	tmp |= FUNC3(FUNC0(AR9170_TX_PHY_TX_PWR, power));
	tmp |= FUNC3(FUNC0(AR9170_TX_PHY_TXCHAIN, chains));
	return tmp;
}
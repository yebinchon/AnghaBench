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
struct ath_hw {scalar_t__ opmode; scalar_t__ slottime; } ;
struct ath9k_tx_queue_info {int tqi_aifs; int tqi_cwmin; scalar_t__ tqi_cwmax; } ;
struct ath9k_htc_priv {int beaconq; int* hwq_map; struct ath_hw* ah; } ;

/* Variables and functions */
 scalar_t__ ATH9K_SLOT_TIME_20 ; 
 size_t IEEE80211_AC_BE ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int,struct ath9k_tx_queue_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int,struct ath9k_tx_queue_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_tx_queue_info*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct ath9k_htc_priv *priv)
{
	struct ath_hw *ah = priv->ah;
	struct ath9k_tx_queue_info qi, qi_be;

	FUNC5(&qi, 0, sizeof(struct ath9k_tx_queue_info));
	FUNC5(&qi_be, 0, sizeof(struct ath9k_tx_queue_info));

	FUNC1(ah, priv->beaconq, &qi);

	if (priv->ah->opmode == NL80211_IFTYPE_AP) {
		qi.tqi_aifs = 1;
		qi.tqi_cwmin = 0;
		qi.tqi_cwmax = 0;
	} else if (priv->ah->opmode == NL80211_IFTYPE_ADHOC) {
		int qnum = priv->hwq_map[IEEE80211_AC_BE];

		FUNC1(ah, qnum, &qi_be);

		qi.tqi_aifs = qi_be.tqi_aifs;

		/*
		 * For WIFI Beacon Distribution
		 * Long slot time  : 2x cwmin
		 * Short slot time : 4x cwmin
		 */
		if (ah->slottime == ATH9K_SLOT_TIME_20)
			qi.tqi_cwmin = 2*qi_be.tqi_cwmin;
		else
			qi.tqi_cwmin = 4*qi_be.tqi_cwmin;

		qi.tqi_cwmax = qi_be.tqi_cwmax;

	}

	if (!FUNC3(ah, priv->beaconq, &qi)) {
		FUNC4(FUNC0(ah),
			"Unable to update beacon queue %u!\n", priv->beaconq);
	} else {
		FUNC2(ah, priv->beaconq);
	}
}
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
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  enable_beacon; scalar_t__ aid; scalar_t__ assoc; int /*<<< orphan*/  use_short_slot; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  bssid; } ;
struct ath_common {scalar_t__ curaid; int /*<<< orphan*/  curbssid; } ;
struct ath5k_vif {scalar_t__ assoc; } ;
struct ath5k_hw {int ah_coverage_class; scalar_t__ opmode; int /*<<< orphan*/  lock; int /*<<< orphan*/  enable_beacon; int /*<<< orphan*/  block; scalar_t__ assoc; int /*<<< orphan*/  ah_short_slot; int /*<<< orphan*/  bintval; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_LED_ASSOC ; 
 int /*<<< orphan*/  AR5K_LED_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_ANY ; 
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_BSSID ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC1 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 struct ath_common* FUNC4 (struct ath5k_hw*) ; 
 int FUNC5 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath5k_hw*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		       struct ieee80211_bss_conf *bss_conf, u32 changes)
{
	struct ath5k_vif *avf = (void *)vif->drv_priv;
	struct ath5k_hw *ah = hw->priv;
	struct ath_common *common = FUNC4(ah);

	FUNC12(&ah->lock);

	if (changes & BSS_CHANGED_BSSID) {
		/* Cache for later use during resets */
		FUNC10(common->curbssid, bss_conf->bssid, ETH_ALEN);
		common->curaid = 0;
		FUNC6(ah);
		FUNC11();
	}

	if (changes & BSS_CHANGED_BEACON_INT)
		ah->bintval = bss_conf->beacon_int;

	if (changes & BSS_CHANGED_ERP_SLOT) {
		int slot_time;

		ah->ah_short_slot = bss_conf->use_short_slot;
		slot_time = FUNC5(ah) +
			    3 * ah->ah_coverage_class;
		FUNC7(ah, slot_time);
	}

	if (changes & BSS_CHANGED_ASSOC) {
		avf->assoc = bss_conf->assoc;
		if (bss_conf->assoc)
			ah->assoc = bss_conf->assoc;
		else
			ah->assoc = FUNC1(ah);

		if (ah->opmode == NL80211_IFTYPE_STATION)
			FUNC9(hw, ah->assoc);
		FUNC8(ah, ah->assoc ?
			AR5K_LED_ASSOC : AR5K_LED_INIT);
		if (bss_conf->assoc) {
			FUNC0(ah, ATH5K_DEBUG_ANY,
				  "Bss Info ASSOC %d, bssid: %pM\n",
				  bss_conf->aid, common->curbssid);
			common->curaid = bss_conf->aid;
			FUNC6(ah);
			/* Once ANI is available you would start it here */
		}
	}

	if (changes & BSS_CHANGED_BEACON) {
		FUNC14(&ah->block);
		FUNC3(hw, vif);
		FUNC15(&ah->block);
	}

	if (changes & BSS_CHANGED_BEACON_ENABLED)
		ah->enable_beacon = bss_conf->enable_beacon;

	if (changes & (BSS_CHANGED_BEACON | BSS_CHANGED_BEACON_ENABLED |
		       BSS_CHANGED_BEACON_INT))
		FUNC2(ah);

	FUNC13(&ah->lock);
}
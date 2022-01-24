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
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct ieee80211_bss_conf {scalar_t__ use_short_slot; scalar_t__ bssid; scalar_t__ enable_beacon; int /*<<< orphan*/  aid; scalar_t__ assoc; } ;
struct ath_hw {scalar_t__ opmode; int slottime; } ;
struct ath_common {int /*<<< orphan*/  curbssid; int /*<<< orphan*/  curaid; } ;
struct ath9k_htc_priv {int num_sta_assoc_vif; int num_ap_vif; int nvifs; int /*<<< orphan*/  mutex; int /*<<< orphan*/  op_flags; struct ath_hw* ah; scalar_t__ num_ibss_vif; } ;

/* Variables and functions */
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int BSS_CHANGED_HT ; 
 int BSS_CHANGED_IBSS ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  OP_ENABLE_BEACON ; 
 int /*<<< orphan*/  OP_TSF_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ath9k_htc_priv*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_htc_priv*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath9k_htc_priv*,struct ieee80211_vif*,struct ieee80211_bss_conf*) ; 
 struct ath_common* FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif,
				       struct ieee80211_bss_conf *bss_conf,
				       u32 changed)
{
	struct ath9k_htc_priv *priv = hw->priv;
	struct ath_hw *ah = priv->ah;
	struct ath_common *common = FUNC9(ah);

	FUNC14(&priv->mutex);
	FUNC3(priv);

	if (changed & BSS_CHANGED_ASSOC) {
		FUNC11(common, CONFIG, "BSS Changed ASSOC %d\n",
			bss_conf->assoc);

		bss_conf->assoc ?
			priv->num_sta_assoc_vif++ : priv->num_sta_assoc_vif--;

		if (priv->ah->opmode == NL80211_IFTYPE_STATION) {
			FUNC1(priv);
			if (bss_conf->assoc && (priv->num_sta_assoc_vif == 1))
				FUNC6(priv);
			else if (priv->num_sta_assoc_vif == 0)
				FUNC7(priv);
		}
	}

	if (changed & BSS_CHANGED_IBSS) {
		if (priv->ah->opmode == NL80211_IFTYPE_ADHOC) {
			common->curaid = bss_conf->aid;
			FUNC13(common->curbssid, bss_conf->bssid, ETH_ALEN);
			FUNC4(priv);
		}
	}

	if ((changed & BSS_CHANGED_BEACON_ENABLED) && bss_conf->enable_beacon) {
		FUNC11(common, CONFIG, "Beacon enabled for BSS: %pM\n",
			bss_conf->bssid);
		FUNC5(priv, vif);
		FUNC16(OP_ENABLE_BEACON, &priv->op_flags);
		FUNC0(priv, vif);
	}

	if ((changed & BSS_CHANGED_BEACON_ENABLED) && !bss_conf->enable_beacon) {
		/*
		 * Disable SWBA interrupt only if there are no
		 * AP/IBSS interfaces.
		 */
		if ((priv->num_ap_vif <= 1) || priv->num_ibss_vif) {
			FUNC11(common, CONFIG,
				"Beacon disabled for BSS: %pM\n",
				bss_conf->bssid);
			FUNC12(OP_ENABLE_BEACON, &priv->op_flags);
			FUNC0(priv, vif);
		}
	}

	if (changed & BSS_CHANGED_BEACON_INT) {
		/*
		 * Reset the HW TSF for the first AP interface.
		 */
		if ((priv->ah->opmode == NL80211_IFTYPE_AP) &&
		    (priv->nvifs == 1) &&
		    (priv->num_ap_vif == 1) &&
		    (vif->type == NL80211_IFTYPE_AP)) {
			FUNC16(OP_TSF_RESET, &priv->op_flags);
		}
		FUNC11(common, CONFIG,
			"Beacon interval changed for BSS: %pM\n",
			bss_conf->bssid);
		FUNC0(priv, vif);
	}

	if (changed & BSS_CHANGED_ERP_SLOT) {
		if (bss_conf->use_short_slot)
			ah->slottime = 9;
		else
			ah->slottime = 20;

		FUNC10(ah);
	}

	if (changed & BSS_CHANGED_HT)
		FUNC8(priv, vif, bss_conf);

	FUNC2(priv);
	FUNC15(&priv->mutex);
}
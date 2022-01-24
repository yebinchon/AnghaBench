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
typedef  int u32 ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ieee80211_bss_conf {scalar_t__ use_short_slot; scalar_t__ enable_beacon; scalar_t__ aid; int /*<<< orphan*/  bssid; int /*<<< orphan*/  assoc; } ;
struct ath_vif {int primary_sta_vif; } ;
struct TYPE_2__ {int slottime; int /*<<< orphan*/  updateslot; } ;
struct ath_softc {int /*<<< orphan*/  mutex; TYPE_1__ beacon; struct ath_hw* sc_ah; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  hw; } ;
struct ath_hw {scalar_t__ opmode; int slottime; } ;
struct ath_common {scalar_t__ curaid; int /*<<< orphan*/  curbssid; } ;

/* Variables and functions */
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_BEACON_INT ; 
 int BSS_CHANGED_ERP_SLOT ; 
 int BSS_CHANGED_IBSS ; 
 int CHECK_ANI ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  SC_OP_BEACONS ; 
 int /*<<< orphan*/  SC_OP_PRIM_STA_VIF ; 
 int /*<<< orphan*/  UPDATE ; 
 scalar_t__ FUNC0 (struct ath_softc*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,struct ieee80211_vif*,int) ; 
 int /*<<< orphan*/  ath9k_bss_assoc_iter ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 scalar_t__ FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   struct ieee80211_bss_conf *bss_conf,
				   u32 changed)
{
#define CHECK_ANI				\
	(BSS_CHANGED_ASSOC |			\
	 BSS_CHANGED_IBSS |			\
	 BSS_CHANGED_BEACON_ENABLED)

	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC2(ah);
	struct ath_vif *avp = (void *)vif->drv_priv;
	int slottime;

	FUNC8(sc);
	FUNC16(&sc->mutex);

	if (changed & BSS_CHANGED_ASSOC) {
		FUNC11(common, CONFIG, "BSSID %pM Changed ASSOC %d\n",
			bss_conf->bssid, bss_conf->assoc);

		if (avp->primary_sta_vif && !bss_conf->assoc) {
			FUNC12(SC_OP_PRIM_STA_VIF, &sc->sc_flags);
			avp->primary_sta_vif = false;

			if (ah->opmode == NL80211_IFTYPE_STATION)
				FUNC12(SC_OP_BEACONS, &sc->sc_flags);
		}

		FUNC13(
			sc->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
			ath9k_bss_assoc_iter, sc);

		if (!FUNC18(SC_OP_PRIM_STA_VIF, &sc->sc_flags) &&
		    ah->opmode == NL80211_IFTYPE_STATION) {
			FUNC15(common->curbssid, 0, ETH_ALEN);
			common->curaid = 0;
			FUNC5(sc->sc_ah);
			if (FUNC4(sc->sc_ah))
				FUNC6(sc, true);
		}
	}

	if (changed & BSS_CHANGED_IBSS) {
		FUNC14(common->curbssid, bss_conf->bssid, ETH_ALEN);
		common->curaid = bss_conf->aid;
		FUNC5(sc->sc_ah);
	}

	if ((changed & BSS_CHANGED_BEACON_ENABLED) ||
	    (changed & BSS_CHANGED_BEACON_INT)) {
		if (ah->opmode == NL80211_IFTYPE_AP &&
		    bss_conf->enable_beacon)
			FUNC9(sc, vif);
		if (FUNC0(sc, vif))
			FUNC1(sc, vif, changed);
	}

	if (changed & BSS_CHANGED_ERP_SLOT) {
		if (bss_conf->use_short_slot)
			slottime = 9;
		else
			slottime = 20;
		if (vif->type == NL80211_IFTYPE_AP) {
			/*
			 * Defer update, so that connected stations can adjust
			 * their settings at the same time.
			 * See beacon.c for more details
			 */
			sc->beacon.slottime = slottime;
			sc->beacon.updateslot = UPDATE;
		} else {
			ah->slottime = slottime;
			FUNC3(ah);
		}
	}

	if (changed & CHECK_ANI)
		FUNC10(sc);

	FUNC17(&sc->mutex);
	FUNC7(sc);

#undef CHECK_ANI
}
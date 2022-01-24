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
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int /*<<< orphan*/  hw; int /*<<< orphan*/  sc_flags; struct ath_hw* sc_ah; } ;
struct ath_hw {int opmode; int /*<<< orphan*/  imask; } ;
struct ath_common {int /*<<< orphan*/  bssidmask; } ;
struct ath9k_vif_iter_data {scalar_t__ naps; scalar_t__ nmeshes; scalar_t__ nadhocs; scalar_t__ nstations; scalar_t__ nwds; int /*<<< orphan*/  mask; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_INT_TSFOOR ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int NL80211_IFTYPE_ADHOC ; 
 int NL80211_IFTYPE_AP ; 
 int NL80211_IFTYPE_MESH_POINT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  SC_OP_PRIM_STA_VIF ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,struct ieee80211_vif*,struct ath9k_vif_iter_data*) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  ath9k_sta_vif_iter ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw,
					  struct ieee80211_vif *vif)
{
	struct ath_softc *sc = hw->priv;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC1(ah);
	struct ath9k_vif_iter_data iter_data;
	enum nl80211_iftype old_opmode = ah->opmode;

	FUNC0(hw, vif, &iter_data);

	FUNC7(common->bssidmask, iter_data.mask, ETH_ALEN);
	FUNC5(common);

	if (iter_data.naps > 0) {
		FUNC3(ah, true);
		ah->opmode = NL80211_IFTYPE_AP;
	} else {
		FUNC3(ah, false);

		if (iter_data.nmeshes)
			ah->opmode = NL80211_IFTYPE_MESH_POINT;
		else if (iter_data.nwds)
			ah->opmode = NL80211_IFTYPE_AP;
		else if (iter_data.nadhocs)
			ah->opmode = NL80211_IFTYPE_ADHOC;
		else
			ah->opmode = NL80211_IFTYPE_STATION;
	}

	FUNC4(ah);

	if ((iter_data.nstations + iter_data.nadhocs + iter_data.nmeshes) > 0)
		ah->imask |= ATH9K_INT_TSFOOR;
	else
		ah->imask &= ~ATH9K_INT_TSFOOR;

	FUNC2(ah);

	/*
	 * If we are changing the opmode to STATION,
	 * a beacon sync needs to be done.
	 */
	if (ah->opmode == NL80211_IFTYPE_STATION &&
	    old_opmode == NL80211_IFTYPE_AP &&
	    FUNC8(SC_OP_PRIM_STA_VIF, &sc->sc_flags)) {
		FUNC6(
			sc->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
			ath9k_sta_vif_iter, sc);
	}
}
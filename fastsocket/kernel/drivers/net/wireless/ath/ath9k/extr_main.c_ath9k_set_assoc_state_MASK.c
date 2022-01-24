#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_bss_conf {int /*<<< orphan*/  aid; int /*<<< orphan*/  bssid; } ;
struct ieee80211_vif {int /*<<< orphan*/  addr; struct ieee80211_bss_conf bss_conf; scalar_t__ drv_priv; } ;
struct ath_vif {int primary_sta_vif; } ;
struct ath_softc {int ps_flags; TYPE_2__* sc_ah; int /*<<< orphan*/  sc_pm_lock; void* last_rssi; int /*<<< orphan*/  sc_flags; } ;
struct ath_common {int /*<<< orphan*/  curbssid; int /*<<< orphan*/  curaid; } ;
struct TYPE_5__ {void* avgbrssi; } ;
struct TYPE_6__ {scalar_t__ opmode; TYPE_1__ stats; } ;

/* Variables and functions */
 void* ATH_RSSI_DUMMY_MARKER ; 
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int PS_BEACON_SYNC ; 
 int PS_WAIT_FOR_BEACON ; 
 int /*<<< orphan*/  SC_OP_PRIM_STA_VIF ; 
 struct ath_common* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct ath_softc *sc,
				  struct ieee80211_vif *vif)
{
	struct ath_common *common = FUNC0(sc->sc_ah);
	struct ath_vif *avp = (void *)vif->drv_priv;
	struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;
	unsigned long flags;

	FUNC6(SC_OP_PRIM_STA_VIF, &sc->sc_flags);
	avp->primary_sta_vif = true;

	/*
	 * Set the AID, BSSID and do beacon-sync only when
	 * the HW opmode is STATION.
	 *
	 * But the primary bit is set above in any case.
	 */
	if (sc->sc_ah->opmode != NL80211_IFTYPE_STATION)
		return;

	FUNC5(common->curbssid, bss_conf->bssid, ETH_ALEN);
	common->curaid = bss_conf->aid;
	FUNC2(sc->sc_ah);

	sc->last_rssi = ATH_RSSI_DUMMY_MARKER;
	sc->sc_ah->stats.avgbrssi = ATH_RSSI_DUMMY_MARKER;

	FUNC7(&sc->sc_pm_lock, flags);
	sc->ps_flags |= PS_BEACON_SYNC | PS_WAIT_FOR_BEACON;
	FUNC8(&sc->sc_pm_lock, flags);

	if (FUNC1(sc->sc_ah))
		FUNC3(sc, false);

	FUNC4(common, CONFIG,
		"Primary Station interface: %pM, BSSID: %pM\n",
		vif->addr, common->curbssid);
}
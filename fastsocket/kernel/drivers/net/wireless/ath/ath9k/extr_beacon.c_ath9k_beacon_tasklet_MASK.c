#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  enable_beacon; } ;
struct ieee80211_vif {TYPE_2__ bss_conf; } ;
struct TYPE_6__ {int bmisscnt; scalar_t__ updateslot; int slotupdate; int /*<<< orphan*/  beaconq; int /*<<< orphan*/  slottime; struct ieee80211_vif** bslot; } ;
struct ath_softc {int nbcnvifs; TYPE_3__ beacon; int /*<<< orphan*/  hw; int /*<<< orphan*/  hw_check_work; int /*<<< orphan*/  sc_flags; struct ath_hw* sc_ah; } ;
struct TYPE_4__ {int hw_caps; } ;
struct ath_hw {int /*<<< orphan*/  slottime; TYPE_1__ caps; } ;
struct ath_common {int dummy; } ;
struct ath_buf {int /*<<< orphan*/  bf_daddr; } ;

/* Variables and functions */
 int ATH9K_HW_CAP_EDMA ; 
 int /*<<< orphan*/  BEACON ; 
 int /*<<< orphan*/  BSTUCK ; 
 int BSTUCK_THRESH ; 
 scalar_t__ COMMIT ; 
 scalar_t__ OK ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  RESET_TYPE_BEACON_STUCK ; 
 int /*<<< orphan*/  SC_OP_HW_RESET ; 
 scalar_t__ UPDATE ; 
 int FUNC0 (struct ath_softc*) ; 
 struct ath_buf* FUNC1 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 struct ath_common* FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 scalar_t__ FUNC6 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC15(unsigned long data)
{
	struct ath_softc *sc = (struct ath_softc *)data;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC4(ah);
	struct ath_buf *bf = NULL;
	struct ieee80211_vif *vif;
	bool edma = !!(ah->caps.hw_caps & ATH9K_HW_CAP_EDMA);
	int slot;

	if (FUNC14(SC_OP_HW_RESET, &sc->sc_flags)) {
		FUNC12(common, RESET,
			"reset work is pending, skip beaconing now\n");
		return;
	}

	/*
	 * Check if the previous beacon has gone out.  If
	 * not don't try to post another, skip this period
	 * and wait for the next.  Missed beacons indicate
	 * a problem and should not occur.  If we miss too
	 * many consecutive beacons reset the device.
	 */
	if (FUNC6(ah, sc->beacon.beaconq) != 0) {
		sc->beacon.bmisscnt++;

		if (!FUNC3(ah))
			FUNC13(sc->hw, &sc->hw_check_work);

		if (sc->beacon.bmisscnt < BSTUCK_THRESH * sc->nbcnvifs) {
			FUNC12(common, BSTUCK,
				"missed %u consecutive beacons\n",
				sc->beacon.bmisscnt);
			FUNC8(ah, sc->beacon.beaconq);
			if (sc->beacon.bmisscnt > 3)
				FUNC2(ah);
		} else if (sc->beacon.bmisscnt >= BSTUCK_THRESH) {
			FUNC12(common, BSTUCK, "beacon is officially stuck\n");
			sc->beacon.bmisscnt = 0;
			FUNC10(sc, RESET_TYPE_BEACON_STUCK);
		}

		return;
	}

	slot = FUNC0(sc);
	vif = sc->beacon.bslot[slot];

	if (!vif || !vif->bss_conf.enable_beacon)
		return;

	bf = FUNC1(sc->hw, vif);

	if (sc->beacon.bmisscnt != 0) {
		FUNC12(common, BSTUCK, "resume beacon xmit after %u misses\n",
			sc->beacon.bmisscnt);
		sc->beacon.bmisscnt = 0;
	}

	/*
	 * Handle slot time change when a non-ERP station joins/leaves
	 * an 11g network.  The 802.11 layer notifies us via callback,
	 * we mark updateslot, then wait one beacon before effecting
	 * the change.  This gives associated stations at least one
	 * beacon interval to note the state change.
	 *
	 * NB: The slot time change state machine is clocked according
	 *     to whether we are bursting or staggering beacons.  We
	 *     recognize the request to update and record the current
	 *     slot then don't transition until that slot is reached
	 *     again.  If we miss a beacon for that slot then we'll be
	 *     slow to transition but we'll be sure at least one beacon
	 *     interval has passed.  When bursting slot is always left
	 *     set to ATH_BCBUF so this check is a noop.
	 */
	if (sc->beacon.updateslot == UPDATE) {
		sc->beacon.updateslot = COMMIT;
		sc->beacon.slotupdate = slot;
	} else if (sc->beacon.updateslot == COMMIT &&
		   sc->beacon.slotupdate == slot) {
		ah->slottime = sc->beacon.slottime;
		FUNC5(ah);
		sc->beacon.updateslot = OK;
	}

	if (bf) {
		FUNC11(sc);

		FUNC12(common, BEACON,
			"Transmitting beacon for slot: %d\n", slot);

		/* NB: cabq traffic should already be queued and primed */
		FUNC7(ah, sc->beacon.beaconq, bf->bf_daddr);

		if (!edma)
			FUNC9(ah, sc->beacon.beaconq);
	}
}
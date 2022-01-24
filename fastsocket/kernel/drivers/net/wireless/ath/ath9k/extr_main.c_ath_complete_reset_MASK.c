#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  txpowlimit; } ;
struct ath_softc {int ps_flags; int ant_rx; TYPE_4__* hw; int /*<<< orphan*/  sc_pm_lock; int /*<<< orphan*/  sc_flags; int /*<<< orphan*/  curtxpow; TYPE_1__ config; struct ath_hw* sc_ah; } ;
struct TYPE_7__ {int hw_caps; } ;
struct ath_hw {scalar_t__ opmode; TYPE_3__ caps; } ;
struct ath_common {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_8__ {TYPE_2__ conf; } ;

/* Variables and functions */
 int ATH9K_HW_CAP_ANT_DIV_COMB ; 
 int IEEE80211_CONF_OFFCHANNEL ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int PS_BEACON_SYNC ; 
 int PS_WAIT_FOR_BEACON ; 
 int /*<<< orphan*/  SC_OP_BEACONS ; 
 int /*<<< orphan*/  SC_OP_HW_RESET ; 
 int /*<<< orphan*/  SC_OP_PRIM_STA_VIF ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 scalar_t__ FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC14(struct ath_softc *sc, bool start)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC1(ah);
	unsigned long flags;

	if (FUNC8(sc) != 0) {
		FUNC6(common, "Unable to restart recv logic\n");
		return false;
	}

	FUNC0(ah, sc->curtxpow,
			       sc->config.txpowlimit, &sc->curtxpow);

	FUNC9(SC_OP_HW_RESET, &sc->sc_flags);
	FUNC3(ah);
	FUNC2(ah);

	if (!(sc->hw->conf.flags & IEEE80211_CONF_OFFCHANNEL) && start) {
		if (!FUNC13(SC_OP_BEACONS, &sc->sc_flags))
			goto work;

		if (ah->opmode == NL80211_IFTYPE_STATION &&
		    FUNC13(SC_OP_PRIM_STA_VIF, &sc->sc_flags)) {
			FUNC11(&sc->sc_pm_lock, flags);
			sc->ps_flags |= PS_BEACON_SYNC | PS_WAIT_FOR_BEACON;
			FUNC12(&sc->sc_pm_lock, flags);
		} else {
			FUNC4(sc);
		}
	work:
		FUNC7(sc);
	}

	if ((ah->caps.hw_caps & ATH9K_HW_CAP_ANT_DIV_COMB) && sc->ant_rx != 3)
		FUNC5(sc);

	FUNC10(sc->hw);

	return true;
}
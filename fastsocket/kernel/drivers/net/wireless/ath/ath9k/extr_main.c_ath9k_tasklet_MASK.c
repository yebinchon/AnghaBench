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
struct ath_softc {int intrstatus; int ps_flags; int /*<<< orphan*/  sc_pcu_lock; int /*<<< orphan*/  sc_pm_lock; scalar_t__ ps_enabled; struct ath_hw* sc_ah; } ;
struct TYPE_2__ {int hw_caps; } ;
struct ath_hw {TYPE_1__ caps; } ;
struct ath_common {int dummy; } ;
typedef  enum ath_reset_type { ____Placeholder_ath_reset_type } ath_reset_type ;

/* Variables and functions */
 int ATH9K_HW_CAP_EDMA ; 
 int ATH9K_INT_BB_WATCHDOG ; 
 int ATH9K_INT_FATAL ; 
 int ATH9K_INT_RX ; 
 int ATH9K_INT_RXEOL ; 
 int ATH9K_INT_RXHP ; 
 int ATH9K_INT_RXLP ; 
 int ATH9K_INT_RXORN ; 
 int ATH9K_INT_TSFOOR ; 
 int ATH9K_INT_TX ; 
 int /*<<< orphan*/  PS ; 
 int PS_BEACON_SYNC ; 
 int PS_WAIT_FOR_BEACON ; 
 int RESET_TYPE_BB_WATCHDOG ; 
 int RESET_TYPE_FATAL_INT ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*,int) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC14(unsigned long data)
{
	struct ath_softc *sc = (struct ath_softc *)data;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC1(ah);
	enum ath_reset_type type;
	unsigned long flags;
	u32 status = sc->intrstatus;
	u32 rxmask;

	FUNC4(sc);
	FUNC10(&sc->sc_pcu_lock);

	if ((status & ATH9K_INT_FATAL) ||
	    (status & ATH9K_INT_BB_WATCHDOG)) {

		if (status & ATH9K_INT_FATAL)
			type = RESET_TYPE_FATAL_INT;
		else
			type = RESET_TYPE_BB_WATCHDOG;

		FUNC5(sc, type);
		goto out;
	}

	FUNC11(&sc->sc_pm_lock, flags);
	if ((status & ATH9K_INT_TSFOOR) && sc->ps_enabled) {
		/*
		 * TSF sync does not look correct; remain awake to sync with
		 * the next Beacon.
		 */
		FUNC6(common, PS, "TSFOOR - Sync with next Beacon\n");
		sc->ps_flags |= PS_WAIT_FOR_BEACON | PS_BEACON_SYNC;
	}
	FUNC13(&sc->sc_pm_lock, flags);

	if (ah->caps.hw_caps & ATH9K_HW_CAP_EDMA)
		rxmask = (ATH9K_INT_RXHP | ATH9K_INT_RXLP | ATH9K_INT_RXEOL |
			  ATH9K_INT_RXORN);
	else
		rxmask = (ATH9K_INT_RX | ATH9K_INT_RXEOL | ATH9K_INT_RXORN);

	if (status & rxmask) {
		/* Check for high priority Rx first */
		if ((ah->caps.hw_caps & ATH9K_HW_CAP_EDMA) &&
		    (status & ATH9K_INT_RXHP))
			FUNC7(sc, 0, true);

		FUNC7(sc, 0, false);
	}

	if (status & ATH9K_INT_TX) {
		if (ah->caps.hw_caps & ATH9K_HW_CAP_EDMA)
			FUNC8(sc);
		else
			FUNC9(sc);
	}

	FUNC0(sc, status);

out:
	/* re-enable hardware interrupt */
	FUNC2(ah);

	FUNC12(&sc->sc_pcu_lock);
	FUNC3(sc);
}
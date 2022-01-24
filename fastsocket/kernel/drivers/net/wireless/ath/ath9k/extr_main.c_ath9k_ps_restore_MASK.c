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
struct ath_softc {scalar_t__ ps_usecount; int ps_flags; int /*<<< orphan*/  sc_pm_lock; int /*<<< orphan*/  sc_ah; scalar_t__ ps_enabled; scalar_t__ ps_idle; } ;
struct ath_common {int /*<<< orphan*/  cc_lock; } ;
typedef  enum ath9k_power_mode { ____Placeholder_ath9k_power_mode } ath9k_power_mode ;

/* Variables and functions */
 int ATH9K_PM_FULL_SLEEP ; 
 int ATH9K_PM_NETWORK_SLEEP ; 
 int PS_WAIT_FOR_ANI ; 
 int PS_WAIT_FOR_BEACON ; 
 int PS_WAIT_FOR_CAB ; 
 int PS_WAIT_FOR_PSPOLL_DATA ; 
 int PS_WAIT_FOR_TX_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_common*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC11(struct ath_softc *sc)
{
	struct ath_common *common = FUNC2(sc->sc_ah);
	enum ath9k_power_mode mode;
	unsigned long flags;
	bool reset;

	FUNC8(&sc->sc_pm_lock, flags);
	if (--sc->ps_usecount != 0)
		goto unlock;

	if (sc->ps_idle) {
		FUNC4(sc->sc_ah, 1);
		FUNC5(sc->sc_ah, &reset);
		mode = ATH9K_PM_FULL_SLEEP;
	} else if (sc->ps_enabled &&
		   !(sc->ps_flags & (PS_WAIT_FOR_BEACON |
				     PS_WAIT_FOR_CAB |
				     PS_WAIT_FOR_PSPOLL_DATA |
				     PS_WAIT_FOR_TX_ACK |
				     PS_WAIT_FOR_ANI))) {
		mode = ATH9K_PM_NETWORK_SLEEP;
		if (FUNC1(sc->sc_ah))
			FUNC0(sc);
	} else {
		goto unlock;
	}

	FUNC7(&common->cc_lock);
	FUNC6(common);
	FUNC9(&common->cc_lock);

	FUNC3(sc->sc_ah, mode);

 unlock:
	FUNC10(&sc->sc_pm_lock, flags);
}
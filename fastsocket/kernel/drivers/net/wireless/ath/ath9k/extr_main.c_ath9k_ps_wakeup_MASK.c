#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ath_softc {int ps_usecount; int /*<<< orphan*/  sc_pm_lock; TYPE_1__* sc_ah; } ;
struct ath_common {int /*<<< orphan*/  cc_lock; int /*<<< orphan*/  cc_ani; int /*<<< orphan*/  cc_survey; } ;
typedef  enum ath9k_power_mode { ____Placeholder_ath9k_power_mode } ath9k_power_mode ;
struct TYPE_3__ {int power_mode; } ;

/* Variables and functions */
 int ATH9K_PM_AWAKE ; 
 struct ath_common* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct ath_softc *sc)
{
	struct ath_common *common = FUNC0(sc->sc_ah);
	unsigned long flags;
	enum ath9k_power_mode power_mode;

	FUNC5(&sc->sc_pm_lock, flags);
	if (++sc->ps_usecount != 1)
		goto unlock;

	power_mode = sc->sc_ah->power_mode;
	FUNC1(sc->sc_ah, ATH9K_PM_AWAKE);

	/*
	 * While the hardware is asleep, the cycle counters contain no
	 * useful data. Better clear them now so that they don't mess up
	 * survey data results.
	 */
	if (power_mode != ATH9K_PM_AWAKE) {
		FUNC4(&common->cc_lock);
		FUNC2(common);
		FUNC3(&common->cc_survey, 0, sizeof(common->cc_survey));
		FUNC3(&common->cc_ani, 0, sizeof(common->cc_ani));
		FUNC6(&common->cc_lock);
	}

 unlock:
	FUNC7(&sc->sc_pm_lock, flags);
}
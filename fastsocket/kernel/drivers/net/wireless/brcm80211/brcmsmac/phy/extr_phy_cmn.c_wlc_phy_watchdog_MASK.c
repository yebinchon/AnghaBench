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
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int phynoise_now; scalar_t__ phycal_txpower; scalar_t__ nphy_perical; scalar_t__ nphy_perical_last; scalar_t__ phy_lastcal; scalar_t__ disable_percal; scalar_t__ carrier_suppr_disable; TYPE_1__* sh; scalar_t__ phy_forcecal; scalar_t__ phynoise_state; int /*<<< orphan*/  radio_chanspec; int /*<<< orphan*/  watchdog_override; } ;
struct TYPE_2__ {int now; scalar_t__ fast_timer; scalar_t__ glacial_timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct brcms_phy*) ; 
 scalar_t__ FUNC3 (struct brcms_phy*) ; 
 int /*<<< orphan*/  LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL ; 
 int /*<<< orphan*/  PHY_NOISE_SAMPLE_MON ; 
 scalar_t__ PHY_PERICAL_DISABLE ; 
 scalar_t__ PHY_PERICAL_MANUAL ; 
 int /*<<< orphan*/  PHY_PERICAL_WATCHDOG ; 
 scalar_t__ FUNC4 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*) ; 
 scalar_t__ FUNC6 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy_pub*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy_pub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*) ; 

void FUNC12(struct brcms_phy_pub *pih)
{
	struct brcms_phy *pi = (struct brcms_phy *) pih;
	bool delay_phy_cal = false;
	pi->sh->now++;

	if (!pi->watchdog_override)
		return;

	if (!(FUNC6(pi) || FUNC4(pi)))
		FUNC10((struct brcms_phy_pub *) pi,
					     PHY_NOISE_SAMPLE_MON,
					     FUNC1(pi->
							    radio_chanspec));

	if (pi->phynoise_state && (pi->sh->now - pi->phynoise_now) > 5)
		pi->phynoise_state = 0;

	if ((!pi->phycal_txpower) ||
	    ((pi->sh->now - pi->phycal_txpower) >= pi->sh->fast_timer)) {

		if (!FUNC5(pi) && FUNC9(pi))
			pi->phycal_txpower = pi->sh->now;
	}

	if ((FUNC6(pi) || FUNC4(pi)
	     || FUNC0(pi)))
		return;

	if (FUNC3(pi) && !pi->disable_percal && !delay_phy_cal) {

		if ((pi->nphy_perical != PHY_PERICAL_DISABLE) &&
		    (pi->nphy_perical != PHY_PERICAL_MANUAL) &&
		    ((pi->sh->now - pi->nphy_perical_last) >=
		     pi->sh->glacial_timer))
			FUNC8((struct brcms_phy_pub *) pi,
					    PHY_PERICAL_WATCHDOG);

		FUNC11(pi);
	}

	if (FUNC2(pi)) {
		if (pi->phy_forcecal ||
		    ((pi->sh->now - pi->phy_lastcal) >=
		     pi->sh->glacial_timer)) {
			if (!(FUNC6(pi) || FUNC0(pi)))
				FUNC7(
					pi,
					LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL);
			if (!
			    (FUNC6(pi) || FUNC4(pi)
			     || FUNC0(pi)
			     || pi->carrier_suppr_disable
			     || pi->disable_percal))
				FUNC7(pi,
						       PHY_PERICAL_WATCHDOG);
		}
	}
}
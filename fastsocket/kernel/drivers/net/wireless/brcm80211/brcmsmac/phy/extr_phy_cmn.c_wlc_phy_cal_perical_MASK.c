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
typedef  int u8 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {scalar_t__ nphy_perical; int first_cal_after_assoc; void* nphy_lastcal_temp; int /*<<< orphan*/  radio_chanspec; int /*<<< orphan*/  nphy_txiqlocal_chanspec; int /*<<< orphan*/  phycal_tempdelta; int /*<<< orphan*/  cal_type_override; } ;
typedef  void* s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*) ; 
 int /*<<< orphan*/  PHY_PERICAL_AUTO ; 
 scalar_t__ PHY_PERICAL_DISABLE ; 
#define  PHY_PERICAL_DRIVERUP 133 
 int /*<<< orphan*/  PHY_PERICAL_FULL ; 
 int /*<<< orphan*/  PHY_PERICAL_INIT_DELAY ; 
#define  PHY_PERICAL_JOIN_BSS 132 
 scalar_t__ PHY_PERICAL_MANUAL ; 
 scalar_t__ PHY_PERICAL_MPHASE ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*) ; 
#define  PHY_PERICAL_PHYINIT 131 
 scalar_t__ PHY_PERICAL_SPHASE ; 
#define  PHY_PERICAL_START_IBSS 130 
#define  PHY_PERICAL_UP_BSS 129 
#define  PHY_PERICAL_WATCHDOG 128 
 int /*<<< orphan*/  PHY_PERICAL_WDOG_DELAY ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct brcms_phy*) ; 

void FUNC6(struct brcms_phy_pub *pih, u8 reason)
{
	s16 nphy_currtemp = 0;
	s16 delta_temp = 0;
	bool do_periodic_cal = true;
	struct brcms_phy *pi = (struct brcms_phy *) pih;

	if (!FUNC0(pi))
		return;

	if ((pi->nphy_perical == PHY_PERICAL_DISABLE) ||
	    (pi->nphy_perical == PHY_PERICAL_MANUAL))
		return;

	switch (reason) {
	case PHY_PERICAL_DRIVERUP:
		break;

	case PHY_PERICAL_PHYINIT:
		if (pi->nphy_perical == PHY_PERICAL_MPHASE) {
			if (FUNC1(pi))
				FUNC2(pi);

			FUNC3(
				pi,
				PHY_PERICAL_INIT_DELAY);
		}
		break;

	case PHY_PERICAL_JOIN_BSS:
	case PHY_PERICAL_START_IBSS:
	case PHY_PERICAL_UP_BSS:
		if ((pi->nphy_perical == PHY_PERICAL_MPHASE) &&
		    FUNC1(pi))
			FUNC2(pi);

		pi->first_cal_after_assoc = true;

		pi->cal_type_override = PHY_PERICAL_FULL;

		if (pi->phycal_tempdelta)
			pi->nphy_lastcal_temp = FUNC5(pi);

		FUNC4(pi, PHY_PERICAL_FULL);
		break;

	case PHY_PERICAL_WATCHDOG:
		if (pi->phycal_tempdelta) {
			nphy_currtemp = FUNC5(pi);
			delta_temp =
				(nphy_currtemp > pi->nphy_lastcal_temp) ?
				nphy_currtemp - pi->nphy_lastcal_temp :
				pi->nphy_lastcal_temp - nphy_currtemp;

			if ((delta_temp < (s16) pi->phycal_tempdelta) &&
			    (pi->nphy_txiqlocal_chanspec ==
			     pi->radio_chanspec))
				do_periodic_cal = false;
			else
				pi->nphy_lastcal_temp = nphy_currtemp;
		}

		if (do_periodic_cal) {
			if (pi->nphy_perical == PHY_PERICAL_MPHASE) {
				if (!FUNC1(pi))
					FUNC3(
						pi,
						PHY_PERICAL_WDOG_DELAY);
			} else if (pi->nphy_perical == PHY_PERICAL_SPHASE)
				FUNC4(pi,
							     PHY_PERICAL_AUTO);
		}
		break;
	default:
		break;
	}
}
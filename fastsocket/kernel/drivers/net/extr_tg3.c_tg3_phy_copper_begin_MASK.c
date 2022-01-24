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
struct TYPE_2__ {scalar_t__ autoneg; int advertising; int flowctrl; int active_speed; int speed; scalar_t__ active_duplex; scalar_t__ duplex; } ;
struct tg3 {int phy_flags; TYPE_1__ link_config; } ;

/* Variables and functions */
 int ADVERTISED_1000baseT_Full ; 
 int ADVERTISED_1000baseT_Half ; 
 int ADVERTISED_100baseT_Full ; 
 int ADVERTISED_100baseT_Half ; 
 int ADVERTISED_10baseT_Full ; 
 int ADVERTISED_10baseT_Half ; 
 int ADVERTISE_ALL ; 
 scalar_t__ ASIC_REV_5714 ; 
 scalar_t__ AUTONEG_ENABLE ; 
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int BMCR_FULLDPLX ; 
 int BMCR_LOOPBACK ; 
 int BMCR_SPEED100 ; 
 int BMCR_SPEED1000 ; 
 int BMSR_LSTATUS ; 
 scalar_t__ DUPLEX_FULL ; 
 int FLOW_CTRL_RX ; 
 int FLOW_CTRL_TX ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_BMSR ; 
#define  SPEED_10 130 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int TG3_PHYFLG_10_100_ONLY ; 
 int TG3_PHYFLG_1G_ON_VAUX_OK ; 
 int TG3_PHYFLG_IS_LOW_POWER ; 
 int TG3_PHYFLG_KEEP_LINK_ON_PWRDN ; 
 int /*<<< orphan*/  WOL_SPEED_100MB ; 
 scalar_t__ FUNC0 (struct tg3*) ; 
 scalar_t__ FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int,int) ; 
 scalar_t__ FUNC3 (struct tg3*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct tg3 *tp)
{
	if (tp->link_config.autoneg == AUTONEG_ENABLE ||
	    (tp->phy_flags & TG3_PHYFLG_IS_LOW_POWER)) {
		u32 adv, fc;

		if ((tp->phy_flags & TG3_PHYFLG_IS_LOW_POWER) &&
		    !(tp->phy_flags & TG3_PHYFLG_KEEP_LINK_ON_PWRDN)) {
			adv = ADVERTISED_10baseT_Half |
			      ADVERTISED_10baseT_Full;
			if (FUNC1(tp, WOL_SPEED_100MB))
				adv |= ADVERTISED_100baseT_Half |
				       ADVERTISED_100baseT_Full;
			if (tp->phy_flags & TG3_PHYFLG_1G_ON_VAUX_OK)
				adv |= ADVERTISED_1000baseT_Half |
				       ADVERTISED_1000baseT_Full;

			fc = FLOW_CTRL_TX | FLOW_CTRL_RX;
		} else {
			adv = tp->link_config.advertising;
			if (tp->phy_flags & TG3_PHYFLG_10_100_ONLY)
				adv &= ~(ADVERTISED_1000baseT_Half |
					 ADVERTISED_1000baseT_Full);

			fc = tp->link_config.flowctrl;
		}

		FUNC2(tp, adv, fc);

		if ((tp->phy_flags & TG3_PHYFLG_IS_LOW_POWER) &&
		    (tp->phy_flags & TG3_PHYFLG_KEEP_LINK_ON_PWRDN)) {
			/* Normally during power down we want to autonegotiate
			 * the lowest possible speed for WOL. However, to avoid
			 * link flap, we leave it untouched.
			 */
			return;
		}

		FUNC4(tp, MII_BMCR,
			     BMCR_ANENABLE | BMCR_ANRESTART);
	} else {
		int i;
		u32 bmcr, orig_bmcr;

		tp->link_config.active_speed = tp->link_config.speed;
		tp->link_config.active_duplex = tp->link_config.duplex;

		if (FUNC0(tp) == ASIC_REV_5714) {
			/* With autoneg disabled, 5715 only links up when the
			 * advertisement register has the configured speed
			 * enabled.
			 */
			FUNC4(tp, MII_ADVERTISE, ADVERTISE_ALL);
		}

		bmcr = 0;
		switch (tp->link_config.speed) {
		default:
		case SPEED_10:
			break;

		case SPEED_100:
			bmcr |= BMCR_SPEED100;
			break;

		case SPEED_1000:
			bmcr |= BMCR_SPEED1000;
			break;
		}

		if (tp->link_config.duplex == DUPLEX_FULL)
			bmcr |= BMCR_FULLDPLX;

		if (!FUNC3(tp, MII_BMCR, &orig_bmcr) &&
		    (bmcr != orig_bmcr)) {
			FUNC4(tp, MII_BMCR, BMCR_LOOPBACK);
			for (i = 0; i < 1500; i++) {
				u32 tmp;

				FUNC5(10);
				if (FUNC3(tp, MII_BMSR, &tmp) ||
				    FUNC3(tp, MII_BMSR, &tmp))
					continue;
				if (!(tmp & BMSR_LSTATUS)) {
					FUNC5(40);
					break;
				}
			}
			FUNC4(tp, MII_BMCR, bmcr);
			FUNC5(40);
		}
	}
}
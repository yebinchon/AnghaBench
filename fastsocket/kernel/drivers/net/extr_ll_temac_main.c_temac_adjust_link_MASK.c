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
typedef  int /*<<< orphan*/  u32 ;
struct temac_local {int last_link; int /*<<< orphan*/  indirect_mutex; struct phy_device* phy_dev; } ;
struct phy_device {int speed; int duplex; int link; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
#define  SPEED_10 130 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int /*<<< orphan*/  XTE_EMCFG_LINKSPD_10 ; 
 int /*<<< orphan*/  XTE_EMCFG_LINKSPD_100 ; 
 int /*<<< orphan*/  XTE_EMCFG_LINKSPD_1000 ; 
 int /*<<< orphan*/  XTE_EMCFG_LINKSPD_MASK ; 
 int /*<<< orphan*/  XTE_EMCFG_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct temac_local* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct temac_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct temac_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct net_device *ndev)
{
	struct temac_local *lp = FUNC2(ndev);
	struct phy_device *phy = lp->phy_dev;
	u32 mii_speed;
	int link_state;

	/* hash together the state values to decide if something has changed */
	link_state = phy->speed | (phy->duplex << 1) | phy->link;

	FUNC0(&lp->indirect_mutex);
	if (lp->last_link != link_state) {
		mii_speed = FUNC4(lp, XTE_EMCFG_OFFSET);
		mii_speed &= ~XTE_EMCFG_LINKSPD_MASK;

		switch (phy->speed) {
		case SPEED_1000: mii_speed |= XTE_EMCFG_LINKSPD_1000; break;
		case SPEED_100: mii_speed |= XTE_EMCFG_LINKSPD_100; break;
		case SPEED_10: mii_speed |= XTE_EMCFG_LINKSPD_10; break;
		}

		/* Write new speed setting out to TEMAC */
		FUNC5(lp, XTE_EMCFG_OFFSET, mii_speed);
		lp->last_link = link_state;
		FUNC3(phy);
	}
	FUNC1(&lp->indirect_mutex);
}
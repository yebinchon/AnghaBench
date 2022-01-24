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
struct net_device {int dummy; } ;
struct fe_priv {int linkspeed; scalar_t__ gigabit; int /*<<< orphan*/  lock; int /*<<< orphan*/  phyaddr; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct ethtool_cmd {int speed; int duplex; int supported; int /*<<< orphan*/  transceiver; int /*<<< orphan*/  phy_address; int /*<<< orphan*/  advertising; scalar_t__ autoneg; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISED_1000baseT_Full ; 
 int /*<<< orphan*/  ADVERTISED_100baseT_Full ; 
 int /*<<< orphan*/  ADVERTISED_100baseT_Half ; 
 int /*<<< orphan*/  ADVERTISED_10baseT_Full ; 
 int /*<<< orphan*/  ADVERTISED_10baseT_Half ; 
 int /*<<< orphan*/  ADVERTISED_Autoneg ; 
 int /*<<< orphan*/  ADVERTISED_MII ; 
 int ADVERTISE_1000FULL ; 
 int ADVERTISE_100FULL ; 
 int ADVERTISE_100HALF ; 
 int ADVERTISE_10FULL ; 
 int ADVERTISE_10HALF ; 
 int DUPLEX_FULL ; 
 int DUPLEX_HALF ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int /*<<< orphan*/  MII_READ ; 
#define  NVREG_LINKSPEED_10 130 
#define  NVREG_LINKSPEED_100 129 
#define  NVREG_LINKSPEED_1000 128 
 int NVREG_LINKSPEED_MASK ; 
 scalar_t__ PHY_GIGABIT ; 
 int /*<<< orphan*/  PORT_MII ; 
 int SPEED_10 ; 
 int SPEED_100 ; 
 int SPEED_1000 ; 
 int SUPPORTED_1000baseT_Full ; 
 int SUPPORTED_100baseT_Full ; 
 int SUPPORTED_100baseT_Half ; 
 int SUPPORTED_10baseT_Full ; 
 int SUPPORTED_10baseT_Half ; 
 int SUPPORTED_Autoneg ; 
 int SUPPORTED_MII ; 
 int /*<<< orphan*/  XCVR_EXTERNAL ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fe_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, struct ethtool_cmd *ecmd)
{
	struct fe_priv *np = FUNC1(dev);
	int adv;

	FUNC7(&np->lock);
	ecmd->port = PORT_MII;
	if (!FUNC5(dev)) {
		/* We do not track link speed / duplex setting if the
		 * interface is disabled. Force a link check */
		if (FUNC6(dev)) {
			if (!FUNC3(dev))
				FUNC4(dev);
		} else {
			if (FUNC3(dev))
				FUNC2(dev);
		}
	}

	if (FUNC3(dev)) {
		switch(np->linkspeed & (NVREG_LINKSPEED_MASK)) {
		case NVREG_LINKSPEED_10:
			ecmd->speed = SPEED_10;
			break;
		case NVREG_LINKSPEED_100:
			ecmd->speed = SPEED_100;
			break;
		case NVREG_LINKSPEED_1000:
			ecmd->speed = SPEED_1000;
			break;
		}
		ecmd->duplex = DUPLEX_HALF;
		if (np->duplex)
			ecmd->duplex = DUPLEX_FULL;
	} else {
		ecmd->speed = -1;
		ecmd->duplex = -1;
	}

	ecmd->autoneg = np->autoneg;

	ecmd->advertising = ADVERTISED_MII;
	if (np->autoneg) {
		ecmd->advertising |= ADVERTISED_Autoneg;
		adv = FUNC0(dev, np->phyaddr, MII_ADVERTISE, MII_READ);
		if (adv & ADVERTISE_10HALF)
			ecmd->advertising |= ADVERTISED_10baseT_Half;
		if (adv & ADVERTISE_10FULL)
			ecmd->advertising |= ADVERTISED_10baseT_Full;
		if (adv & ADVERTISE_100HALF)
			ecmd->advertising |= ADVERTISED_100baseT_Half;
		if (adv & ADVERTISE_100FULL)
			ecmd->advertising |= ADVERTISED_100baseT_Full;
		if (np->gigabit == PHY_GIGABIT) {
			adv = FUNC0(dev, np->phyaddr, MII_CTRL1000, MII_READ);
			if (adv & ADVERTISE_1000FULL)
				ecmd->advertising |= ADVERTISED_1000baseT_Full;
		}
	}
	ecmd->supported = (SUPPORTED_Autoneg |
		SUPPORTED_10baseT_Half | SUPPORTED_10baseT_Full |
		SUPPORTED_100baseT_Half | SUPPORTED_100baseT_Full |
		SUPPORTED_MII);
	if (np->gigabit == PHY_GIGABIT)
		ecmd->supported |= SUPPORTED_1000baseT_Full;

	ecmd->phy_address = np->phyaddr;
	ecmd->transceiver = XCVR_EXTERNAL;

	/* ignore maxtxpkt, maxrxpkt for now */
	FUNC8(&np->lock);
	return 0;
}
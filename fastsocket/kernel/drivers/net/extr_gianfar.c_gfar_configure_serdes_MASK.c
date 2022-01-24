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
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct gfar_private {int /*<<< orphan*/  tbi_node; } ;

/* Variables and functions */
 int ADVERTISE_1000XFULL ; 
 int ADVERTISE_1000XPAUSE ; 
 int ADVERTISE_1000XPSE_ASYM ; 
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int BMCR_FULLDPLX ; 
 int BMCR_SPEED1000 ; 
 int BMSR_LSTATUS ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  MII_TBICON ; 
 int TBICON_CLK_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct gfar_private* FUNC2 (struct net_device*) ; 
 struct phy_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct gfar_private *priv = FUNC2(dev);
	struct phy_device *tbiphy;

	if (!priv->tbi_node) {
		FUNC1(&dev->dev, "error: SGMII mode requires that the "
				    "device tree specify a tbi-handle\n");
		return;
	}

	tbiphy = FUNC3(priv->tbi_node);
	if (!tbiphy) {
		FUNC0(&dev->dev, "error: Could not get TBI device\n");
		return;
	}

	/*
	 * If the link is already up, we must already be ok, and don't need to
	 * configure and reset the TBI<->SerDes link.  Maybe U-Boot configured
	 * everything for us?  Resetting it takes the link down and requires
	 * several seconds for it to come back.
	 */
	if (FUNC4(tbiphy, MII_BMSR) & BMSR_LSTATUS)
		return;

	/* Single clk mode, mii mode off(for serdes communication) */
	FUNC5(tbiphy, MII_TBICON, TBICON_CLK_SELECT);

	FUNC5(tbiphy, MII_ADVERTISE,
			ADVERTISE_1000XFULL | ADVERTISE_1000XPAUSE |
			ADVERTISE_1000XPSE_ASYM);

	FUNC5(tbiphy, MII_BMCR, BMCR_ANENABLE |
			BMCR_ANRESTART | BMCR_FULLDPLX | BMCR_SPEED1000);
}
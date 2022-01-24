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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct mii_if_info {int (* mdio_read ) (struct net_device*,int,int /*<<< orphan*/ ) ;int phy_id_mask; int reg_num_mask; int phy_id; int /*<<< orphan*/  (* mdio_write ) (struct net_device*,int,int /*<<< orphan*/ ,int) ;struct net_device* dev; } ;
struct ipg_nic_private {int /*<<< orphan*/  pdev; struct mii_if_info mii_if; } ;

/* Variables and functions */
 int ADVERTISE_1000FULL ; 
 int ADVERTISE_1000HALF ; 
 int BMCR_ANRESTART ; 
 int BMCR_RESET ; 
 int GMII_PHY_1000BASETCONTROL_PreferMaster ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int /*<<< orphan*/  PCI_REVISION_ID ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*,int) ; 
 int FUNC2 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int /*<<< orphan*/ ,int) ; 
 struct ipg_nic_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev)
{
	struct ipg_nic_private *sp = FUNC4(dev);
	struct mii_if_info *mii_if = &sp->mii_if;
	int phyaddr;

	mii_if->dev          = dev;
	mii_if->mdio_read    = mdio_read;
	mii_if->mdio_write   = mdio_write;
	mii_if->phy_id_mask  = 0x1f;
	mii_if->reg_num_mask = 0x1f;

	mii_if->phy_id = phyaddr = FUNC0(dev);

	if (phyaddr != 0x1f) {
		u16 mii_phyctrl, mii_1000cr;
		u8 revisionid = 0;

		mii_1000cr  = FUNC2(dev, phyaddr, MII_CTRL1000);
		mii_1000cr |= ADVERTISE_1000FULL | ADVERTISE_1000HALF |
			GMII_PHY_1000BASETCONTROL_PreferMaster;
		FUNC3(dev, phyaddr, MII_CTRL1000, mii_1000cr);

		mii_phyctrl = FUNC2(dev, phyaddr, MII_BMCR);

		/* Set default phyparam */
		FUNC5(sp->pdev, PCI_REVISION_ID, &revisionid);
		FUNC1(revisionid, dev, phyaddr);

		/* Reset PHY */
		mii_phyctrl |= BMCR_RESET | BMCR_ANRESTART;
		FUNC3(dev, phyaddr, MII_BMCR, mii_phyctrl);

	}
}
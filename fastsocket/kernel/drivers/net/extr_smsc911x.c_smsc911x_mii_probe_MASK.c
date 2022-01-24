#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  phy_interface; } ;
struct smsc911x_data {int last_duplex; int last_carrier; struct phy_device* phy_dev; TYPE_2__ config; TYPE_1__* mii_bus; } ;
struct phy_device {int supported; int advertising; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; TYPE_3__* drv; int /*<<< orphan*/  phy_id; int /*<<< orphan*/  addr; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {struct phy_device** phy_map; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HW ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int PHY_BASIC_FEATURES ; 
 int PHY_MAX_ADDR ; 
 int /*<<< orphan*/  PROBE ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int SUPPORTED_Asym_Pause ; 
 int SUPPORTED_Pause ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct smsc911x_data* FUNC5 (struct net_device*) ; 
 struct phy_device* FUNC6 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smsc911x_phy_adjust_link ; 
 scalar_t__ FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct smsc911x_data *pdata = FUNC5(dev);
	struct phy_device *phydev = NULL;
	int phy_addr;

	/* find the first phy */
	for (phy_addr = 0; phy_addr < PHY_MAX_ADDR; phy_addr++) {
		if (pdata->mii_bus->phy_map[phy_addr]) {
			phydev = pdata->mii_bus->phy_map[phy_addr];
			FUNC2(PROBE, "PHY %d: addr %d, phy_id 0x%08X",
				phy_addr, phydev->addr, phydev->phy_id);
			break;
		}
	}

	if (!phydev) {
		FUNC7("%s: no PHY found\n", dev->name);
		return -ENODEV;
	}

	phydev = FUNC6(dev, FUNC4(&phydev->dev),
		&smsc911x_phy_adjust_link, 0, pdata->config.phy_interface);

	if (FUNC0(phydev)) {
		FUNC7("%s: Could not attach to PHY\n", dev->name);
		return FUNC1(phydev);
	}

	FUNC8("%s: attached PHY driver [%s] (mii_bus:phy_addr=%s, irq=%d)\n",
		dev->name, phydev->drv->name,
		FUNC4(&phydev->dev), phydev->irq);

	/* mask with MAC supported features */
	phydev->supported &= (PHY_BASIC_FEATURES | SUPPORTED_Pause |
			      SUPPORTED_Asym_Pause);
	phydev->advertising = phydev->supported;

	pdata->phy_dev = phydev;
	pdata->last_duplex = -1;
	pdata->last_carrier = -1;

#ifdef USE_PHY_WORK_AROUND
	if (smsc911x_phy_loopbacktest(dev) < 0) {
		SMSC_WARNING(HW, "Failed Loop Back Test");
		return -ENODEV;
	}
	SMSC_TRACE(HW, "Passed Loop Back Test");
#endif				/* USE_PHY_WORK_AROUND */

	FUNC2(HW, "phy initialised succesfully");
	return 0;
}
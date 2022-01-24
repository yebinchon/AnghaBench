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
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct fs_enet_private {int oldduplex; struct phy_device* phydev; TYPE_1__* fpi; scalar_t__ oldspeed; scalar_t__ oldlink; } ;
struct TYPE_2__ {int /*<<< orphan*/  phy_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  fs_adjust_link ; 
 struct fs_enet_private* FUNC1 (struct net_device*) ; 
 struct phy_device* FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC3 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct fs_enet_private *fep = FUNC1(dev);
	struct phy_device *phydev;

	fep->oldlink = 0;
	fep->oldspeed = 0;
	fep->oldduplex = -1;

	phydev = FUNC2(dev, fep->fpi->phy_node, &fs_adjust_link, 0,
				PHY_INTERFACE_MODE_MII);
	if (!phydev) {
		phydev = FUNC3(dev, &fs_adjust_link,
						   PHY_INTERFACE_MODE_MII);
	}
	if (!phydev) {
		FUNC0(&dev->dev, "Could not attach to PHY\n");
		return -ENODEV;
	}

	fep->phydev = phydev;

	return 0;
}
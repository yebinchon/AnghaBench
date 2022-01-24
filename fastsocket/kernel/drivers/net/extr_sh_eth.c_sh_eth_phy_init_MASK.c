#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sh_eth_private {int duplex; struct phy_device* phydev; scalar_t__ speed; int /*<<< orphan*/  link; int /*<<< orphan*/  phy_id; TYPE_1__* mii_bus; } ;
struct phy_device {TYPE_2__* drv; int /*<<< orphan*/  addr; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phy_id ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  PHY_DOWN ; 
 char* PHY_ID_FMT ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_MII ; 
 int FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sh_eth_private* FUNC4 (struct net_device*) ; 
 struct phy_device* FUNC5 (struct net_device*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sh_eth_adjust_link ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC4(ndev);
	char phy_id[MII_BUS_ID_SIZE + 3];
	struct phy_device *phydev = NULL;

	FUNC6(phy_id, sizeof(phy_id), PHY_ID_FMT,
		mdp->mii_bus->id , mdp->phy_id);

	mdp->link = PHY_DOWN;
	mdp->speed = 0;
	mdp->duplex = -1;

	/* Try connect to PHY */
	phydev = FUNC5(ndev, phy_id, &sh_eth_adjust_link,
				0, PHY_INTERFACE_MODE_MII);
	if (FUNC0(phydev)) {
		FUNC2(&ndev->dev, "phy_connect failed\n");
		return FUNC1(phydev);
	}

	FUNC3(&ndev->dev, "attached phy %i to driver %s\n",
		phydev->addr, phydev->drv->name);

	mdp->phydev = phydev;

	return 0;
}
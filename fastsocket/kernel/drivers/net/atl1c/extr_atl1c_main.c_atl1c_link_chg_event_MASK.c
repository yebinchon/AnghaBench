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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct atl1c_adapter {int /*<<< orphan*/  common_task; int /*<<< orphan*/  work_event; int /*<<< orphan*/  link_speed; int /*<<< orphan*/  mdio_lock; int /*<<< orphan*/  hw; struct pci_dev* pdev; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATL1C_WORK_EVENT_LINK_CHANGE ; 
 int BMSR_LSTATUS ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  SPEED_0 ; 
 int /*<<< orphan*/  atl1c_driver_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct atl1c_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct pci_dev    *pdev   = adapter->pdev;
	u16 phy_data;
	u16 link_up;

	FUNC7(&adapter->mdio_lock);
	FUNC0(&adapter->hw, MII_BMSR, &phy_data);
	FUNC0(&adapter->hw, MII_BMSR, &phy_data);
	FUNC8(&adapter->mdio_lock);
	link_up = phy_data & BMSR_LSTATUS;
	/* notify upper layer link down ASAP */
	if (!link_up) {
		if (FUNC3(netdev)) {
			/* old link state: Up */
			FUNC2(netdev);
			if (FUNC4(adapter))
				FUNC1(&pdev->dev,
					"%s: %s NIC Link is Down\n",
					atl1c_driver_name, netdev->name);
			adapter->link_speed = SPEED_0;
		}
	}

	FUNC6(ATL1C_WORK_EVENT_LINK_CHANGE, &adapter->work_event);
	FUNC5(&adapter->common_task);
}
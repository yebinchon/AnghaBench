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
struct vlan_group {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct atl1e_adapter {int /*<<< orphan*/  hw; struct vlan_group* vlgrp; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAC_CTRL_RMV_VLAN ; 
 int /*<<< orphan*/  REG_MAC_CTRL ; 
 int /*<<< orphan*/  FUNC2 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1e_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct atl1e_adapter* FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev,
				   struct vlan_group *grp)
{
	struct atl1e_adapter *adapter = FUNC5(netdev);
	struct pci_dev *pdev = adapter->pdev;
	u32 mac_ctrl_data = 0;

	FUNC4(&pdev->dev, "atl1e_vlan_rx_register\n");

	FUNC2(adapter);

	adapter->vlgrp = grp;
	mac_ctrl_data = FUNC0(&adapter->hw, REG_MAC_CTRL);

	if (grp) {
		/* enable VLAN tag insert/strip */
		mac_ctrl_data |= MAC_CTRL_RMV_VLAN;
	} else {
		/* disable VLAN tag insert/strip */
		mac_ctrl_data &= ~MAC_CTRL_RMV_VLAN;
	}

	FUNC1(&adapter->hw, REG_MAC_CTRL, mac_ctrl_data);
	FUNC3(adapter);
}
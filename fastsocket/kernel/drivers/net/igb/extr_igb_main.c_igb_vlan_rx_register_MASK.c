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
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int /*<<< orphan*/  state; struct vlan_group* vlgrp; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL ; 
 int /*<<< orphan*/  E1000_CTRL_VME ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int /*<<< orphan*/  E1000_RCTL_CFIEN ; 
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 struct igb_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net_device *netdev,
				 struct vlan_group *grp)
{
	struct igb_adapter *adapter = FUNC3(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl, rctl;

	FUNC0(adapter);
	adapter->vlgrp = grp;

	if (grp) {
		/* enable VLAN tag insert/strip */
		ctrl = FUNC4(E1000_CTRL);
		ctrl |= E1000_CTRL_VME;
		FUNC6(E1000_CTRL, ctrl);

		/* Disable CFI check */
		rctl = FUNC4(E1000_RCTL);
		rctl &= ~E1000_RCTL_CFIEN;
		FUNC6(E1000_RCTL, rctl);
	} else {
		/* disable VLAN tag insert/strip */
		ctrl = FUNC4(E1000_CTRL);
		ctrl &= ~E1000_CTRL_VME;
		FUNC6(E1000_CTRL, ctrl);
	}

	FUNC2(adapter);

	if (!FUNC5(__IGB_DOWN, &adapter->state))
		FUNC1(adapter);
}
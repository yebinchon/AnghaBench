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
typedef  scalar_t__ u16 ;
struct vlan_group {int dummy; } ;
struct net_device {int flags; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {scalar_t__ mng_vlan_id; int /*<<< orphan*/  flags; struct vlan_group* vlgrp; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  E1000_CTRL_VME ; 
 scalar_t__ E1000_MNG_VLAN_NONE ; 
 int /*<<< orphan*/  E1000_RCTL_CFIEN ; 
 int /*<<< orphan*/  E1000_RCTL_VFE ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct e1000_adapter* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct net_device *netdev,
				   struct vlan_group *grp)
{
	struct e1000_adapter *adapter = FUNC6(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 ctrl, rctl;

	if (!FUNC7(__E1000_DOWN, &adapter->flags))
		FUNC0(adapter);
	adapter->vlgrp = grp;

	if (grp) {
		/* enable VLAN tag insert/strip */
		ctrl = FUNC4(CTRL);
		ctrl |= E1000_CTRL_VME;
		FUNC5(CTRL, ctrl);

		/* enable VLAN receive filtering */
		rctl = FUNC4(RCTL);
		rctl &= ~E1000_RCTL_CFIEN;
		if (!(netdev->flags & IFF_PROMISC))
			rctl |= E1000_RCTL_VFE;
		FUNC5(RCTL, rctl);
		FUNC2(adapter);
	} else {
		/* disable VLAN tag insert/strip */
		ctrl = FUNC4(CTRL);
		ctrl &= ~E1000_CTRL_VME;
		FUNC5(CTRL, ctrl);

		/* disable VLAN receive filtering */
		rctl = FUNC4(RCTL);
		rctl &= ~E1000_RCTL_VFE;
		FUNC5(RCTL, rctl);

		if (adapter->mng_vlan_id != (u16)E1000_MNG_VLAN_NONE) {
			FUNC3(netdev, adapter->mng_vlan_id);
			adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
		}
	}

	if (!FUNC7(__E1000_DOWN, &adapter->flags))
		FUNC1(adapter);
}
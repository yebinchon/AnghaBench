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
struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbe_adapter {int /*<<< orphan*/  state; struct vlan_group* vlgrp; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct ixgbe_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev,
				   struct vlan_group *grp)
{
	struct ixgbe_adapter *adapter = FUNC4(netdev);

	if (!FUNC5(__IXGBE_DOWN, &adapter->state))
		FUNC0(adapter);
	adapter->vlgrp = grp;

	/*
	 * For a DCB driver, always enable VLAN tag stripping so we can
	 * still receive traffic from a DCB-enabled host even if we're
	 * not in DCB mode.
	 */
	FUNC2(adapter);

	FUNC3(netdev, 0);

	if (!FUNC5(__IXGBE_DOWN, &adapter->state))
		FUNC1(adapter, true, true);
}
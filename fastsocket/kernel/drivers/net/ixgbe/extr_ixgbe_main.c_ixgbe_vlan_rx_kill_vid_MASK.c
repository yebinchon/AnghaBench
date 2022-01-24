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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_vfta ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; int /*<<< orphan*/  state; int /*<<< orphan*/  vlgrp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*,int,int) ; 
 struct ixgbe_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *netdev, u16 vid)
{
	struct ixgbe_adapter *adapter = FUNC3(netdev);
	struct ixgbe_hw *hw = &adapter->hw;

	if (!FUNC5(__IXGBE_DOWN, &adapter->state))
		FUNC1(adapter);

	FUNC6(adapter->vlgrp, vid, NULL);

	if (!FUNC5(__IXGBE_DOWN, &adapter->state))
		FUNC2(adapter, true, true);

	/* remove VID from filter table */
	hw->mac.ops.set_vfta(&adapter->hw, vid, FUNC0(0), false);
}
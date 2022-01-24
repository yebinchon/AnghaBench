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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; int /*<<< orphan*/  state; int /*<<< orphan*/  vlgrp; struct e1000_hw hw; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct igb_adapter*,int /*<<< orphan*/ ,int,int) ; 
 struct igb_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct net_device *netdev, u16 vid)
{
	struct igb_adapter *adapter = FUNC4(netdev);
	struct e1000_hw *hw = &adapter->hw;
	int pf_id = adapter->vfs_allocated_count;
	s32 err;

	FUNC0(adapter);
	FUNC6(adapter->vlgrp, vid, NULL);

	if (!FUNC5(__IGB_DOWN, &adapter->state))
		FUNC1(adapter);

	/* remove vlan from VLVF table array */
	err = FUNC3(adapter, vid, false, pf_id);

	/* if vid was not present in VLVF just remove it from table */
	if (err)
		FUNC2(hw, vid, false);
}
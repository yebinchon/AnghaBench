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
struct ixgbevf_adapter {int /*<<< orphan*/  mbx_lock; struct ixgbe_hw hw; } ;

/* Variables and functions */
 struct ixgbevf_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev, u16 vid)
{
	struct ixgbevf_adapter *adapter = FUNC0(netdev);
	struct ixgbe_hw *hw = &adapter->hw;

	FUNC1(&adapter->mbx_lock);

	/* add VID to filter table */
	hw->mac.ops.set_vfta(hw, vid, 0, true);

	FUNC2(&adapter->mbx_lock);
}
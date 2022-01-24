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
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_vmdq_san_mac ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {TYPE_2__ ops; int /*<<< orphan*/  san_addr; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_HW_ADDR_T_SAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ixgbe_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	int err = 0;
	struct ixgbe_adapter *adapter = FUNC3(dev);
	struct ixgbe_hw *hw = &adapter->hw;

	if (FUNC2(hw->mac.san_addr)) {
		FUNC4();
		err = FUNC1(dev, hw->mac.san_addr, NETDEV_HW_ADDR_T_SAN);
		FUNC5();

		/* update SAN MAC vmdq pool selection */
		hw->mac.ops.set_vmdq_san_mac(hw, FUNC0(0));
	}
	return err;
}
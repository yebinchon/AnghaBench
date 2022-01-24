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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* led_off ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* led_on ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_LEDCTL ; 
 int /*<<< orphan*/  IXGBE_LED_ON ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ixgbe_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, u32 data)
{
	struct ixgbe_adapter *adapter = FUNC3(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	u32 led_reg = FUNC0(hw, IXGBE_LEDCTL);
	u32 i;

	if (!data || data > 300)
		data = 300;

	for (i = 0; i < (data * 1000); i += 400) {
		hw->mac.ops.led_on(hw, IXGBE_LED_ON);
		FUNC2(200);
		hw->mac.ops.led_off(hw, IXGBE_LED_ON);
		FUNC2(200);
	}

	/* Restore LED settings */
	FUNC1(&adapter->hw, IXGBE_LEDCTL, led_reg);

	return 0;
}
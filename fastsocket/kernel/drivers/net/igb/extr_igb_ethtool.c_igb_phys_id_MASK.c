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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int /*<<< orphan*/  led_status; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGB_LED_ON ; 
 unsigned long UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 struct igb_adapter* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, u32 data)
{
	struct igb_adapter *adapter = FUNC5(netdev);
	struct e1000_hw *hw = &adapter->hw;
	unsigned long timeout;

	timeout = data * 1000;

	/*
	 *  msleep_interruptable only accepts unsigned int so we are limited
	 * in how long a duration we can wait
	 */
	if (!timeout || timeout > UINT_MAX)
		timeout = UINT_MAX;

	FUNC1(hw);
	FUNC4(timeout);

	FUNC3(hw);
	FUNC0(IGB_LED_ON, &adapter->led_status);
	FUNC2(hw);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct TYPE_4__ {unsigned long data; scalar_t__ function; } ;
struct e1000_adapter {int /*<<< orphan*/  led_status; TYPE_1__ blink_timer; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_LED_ON ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 scalar_t__ e1000_led_blink_callback ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct e1000_adapter* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev, u32 data)
{
	struct e1000_adapter *adapter = FUNC8(netdev);
	struct e1000_hw *hw = &adapter->hw;

	if (!data)
		data = INT_MAX;

	if (!adapter->blink_timer.function) {
		FUNC5(&adapter->blink_timer);
		adapter->blink_timer.function = e1000_led_blink_callback;
		adapter->blink_timer.data = (unsigned long)adapter;
	}
	FUNC4(hw);
	FUNC6(&adapter->blink_timer, jiffies);
	FUNC7(data * 1000);
	FUNC1(&adapter->blink_timer);

	FUNC3(hw);
	FUNC0(E1000_LED_ON, &adapter->led_status);
	FUNC2(hw);

	return 0;
}
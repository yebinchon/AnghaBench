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
struct TYPE_4__ {unsigned long data; scalar_t__ function; } ;
struct ixgb_adapter {int /*<<< orphan*/  led_status; int /*<<< orphan*/  hw; TYPE_1__ blink_timer; } ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  IXGB_LED_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ ixgb_led_blink_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct ixgb_adapter* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int
FUNC7(struct net_device *netdev, u32 data)
{
	struct ixgb_adapter *adapter = FUNC6(netdev);

	if (!data)
		data = INT_MAX;

	if (!adapter->blink_timer.function) {
		FUNC2(&adapter->blink_timer);
		adapter->blink_timer.function = ixgb_led_blink_callback;
		adapter->blink_timer.data = (unsigned long)adapter;
	}

	FUNC4(&adapter->blink_timer, jiffies);

	FUNC5(data * 1000);
	FUNC1(&adapter->blink_timer);
	FUNC3(&adapter->hw);
	FUNC0(IXGB_LED_ON, &adapter->led_status);

	return 0;
}
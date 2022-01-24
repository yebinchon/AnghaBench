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
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int /*<<< orphan*/  blink_timer; int /*<<< orphan*/  led_status; struct e1000_hw hw; } ;

/* Variables and functions */
 scalar_t__ E1000_ID_INTERVAL ; 
 int /*<<< orphan*/  E1000_LED_ON ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct e1000_adapter *adapter = (struct e1000_adapter *) data;
	struct e1000_hw *hw = &adapter->hw;

	if (FUNC3(E1000_LED_ON, &adapter->led_status))
		FUNC0(hw);
	else
		FUNC1(hw);

	FUNC2(&adapter->blink_timer, jiffies + E1000_ID_INTERVAL);
}
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
struct ixgb_adapter {int /*<<< orphan*/  blink_timer; int /*<<< orphan*/  hw; int /*<<< orphan*/  led_status; } ;

/* Variables and functions */
 scalar_t__ IXGB_ID_INTERVAL ; 
 int /*<<< orphan*/  IXGB_LED_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(unsigned long data)
{
	struct ixgb_adapter *adapter = (struct ixgb_adapter *)data;

	if (FUNC3(IXGB_LED_ON, &adapter->led_status))
		FUNC0(&adapter->hw);
	else
		FUNC1(&adapter->hw);

	FUNC2(&adapter->blink_timer, jiffies + IXGB_ID_INTERVAL);
}
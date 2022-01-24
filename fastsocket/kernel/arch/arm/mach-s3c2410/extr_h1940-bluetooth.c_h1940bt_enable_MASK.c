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

/* Variables and functions */
 int /*<<< orphan*/  H1940_LATCH_BLUETOOTH_POWER ; 
 int /*<<< orphan*/  LED_HALF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bt_led_trigger ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int state ; 

__attribute__((used)) static void FUNC5(int on)
{
	if (on) {
#ifdef CONFIG_LEDS_H1940
		/* flashing Blue */
		led_trigger_event(bt_led_trigger, LED_HALF);
#endif

		/* Power on the chip */
		FUNC1(0, H1940_LATCH_BLUETOOTH_POWER);
		/* Reset the chip */
		FUNC3(10);
		FUNC4(FUNC0(1), 1);
		FUNC3(10);
		FUNC4(FUNC0(1), 0);

		state = 1;
	}
	else {
#ifdef CONFIG_LEDS_H1940
		led_trigger_event(bt_led_trigger, 0);
#endif

		FUNC4(FUNC0(1), 1);
		FUNC3(10);
		FUNC4(FUNC0(1), 0);
		FUNC3(10);
		FUNC1(H1940_LATCH_BLUETOOTH_POWER, 0);

		state = 0;
	}
}
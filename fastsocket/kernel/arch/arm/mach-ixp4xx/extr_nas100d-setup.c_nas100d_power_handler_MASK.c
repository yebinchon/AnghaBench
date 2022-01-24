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
 int /*<<< orphan*/  IXP4XX_GPIO_LOW ; 
 int /*<<< orphan*/  NAS100D_LED_PWR_GPIO ; 
 int /*<<< orphan*/  NAS100D_PB_GPIO ; 
 scalar_t__ PBUTTON_HOLDDOWN_COUNT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  nas100d_power_timer ; 
 scalar_t__ power_button_countdown ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	/* This routine is called twice per second to check the
	 * state of the power button.
	 */

	if (FUNC1(NAS100D_PB_GPIO)) {

		/* IO Pin is 1 (button pushed) */
		if (power_button_countdown > 0)
			power_button_countdown--;

	} else {

		/* Done on button release, to allow for auto-power-on mods. */
		if (power_button_countdown == 0) {
			/* Signal init to do the ctrlaltdel action,
			 * this will bypass init if it hasn't started
			 * and do a kernel_restart.
			 */
			FUNC0();

			/* Change the state of the power LED to "blink" */
			FUNC2(NAS100D_LED_PWR_GPIO, IXP4XX_GPIO_LOW);
		} else {
			power_button_countdown = PBUTTON_HOLDDOWN_COUNT;
		}
	}

	FUNC3(&nas100d_power_timer, jiffies + FUNC4(500));
}
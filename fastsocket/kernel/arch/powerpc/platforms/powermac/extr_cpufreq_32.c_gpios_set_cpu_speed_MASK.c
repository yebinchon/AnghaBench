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
 int /*<<< orphan*/  PMAC_FTR_READ_GPIO ; 
 int /*<<< orphan*/  PMAC_FTR_WRITE_GPIO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  frequency_gpio ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  slew_done_gpio ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  voltage_gpio ; 

__attribute__((used)) static int FUNC4(int low_speed)
{
	int gpio, timeout = 0;

	/* If ramping up, set voltage first */
	if (low_speed == 0) {
		FUNC2(PMAC_FTR_WRITE_GPIO, NULL, voltage_gpio, 0x05);
		/* Delay is way too big but it's ok, we schedule */
		FUNC1(10);
	}

	/* Set frequency */
	gpio = 	FUNC2(PMAC_FTR_READ_GPIO, NULL, frequency_gpio, 0);
	if (low_speed == ((gpio & 0x01) == 0))
		goto skip;

	FUNC2(PMAC_FTR_WRITE_GPIO, NULL, frequency_gpio,
			  low_speed ? 0x04 : 0x05);
	FUNC3(200);
	do {
		if (++timeout > 100)
			break;
		FUNC1(1);
		gpio = FUNC2(PMAC_FTR_READ_GPIO, NULL, slew_done_gpio, 0);
	} while((gpio & 0x02) == 0);
 skip:
	/* If ramping down, set voltage last */
	if (low_speed == 1) {
		FUNC2(PMAC_FTR_WRITE_GPIO, NULL, voltage_gpio, 0x04);
		/* Delay is way too big but it's ok, we schedule */
		FUNC1(10);
	}

#ifdef DEBUG_FREQ
	debug_calc_bogomips();
#endif

	return 0;
}
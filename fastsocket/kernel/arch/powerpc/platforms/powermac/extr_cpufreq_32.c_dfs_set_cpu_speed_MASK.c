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
 int /*<<< orphan*/  PMAC_FTR_WRITE_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  voltage_gpio ; 

__attribute__((used)) static int FUNC4(int low_speed)
{
	if (low_speed == 0) {
		/* ramping up, set voltage first */
		FUNC2(PMAC_FTR_WRITE_GPIO, NULL, voltage_gpio, 0x05);
		/* Make sure we sleep for at least 1ms */
		FUNC0(1);
	}

	/* set frequency */
#ifdef CONFIG_6xx
	low_choose_7447a_dfs(low_speed);
#endif
	FUNC3(100);

	if (low_speed == 1) {
		/* ramping down, set voltage last */
		FUNC2(PMAC_FTR_WRITE_GPIO, NULL, voltage_gpio, 0x04);
		FUNC0(1);
	}

	return 0;
}
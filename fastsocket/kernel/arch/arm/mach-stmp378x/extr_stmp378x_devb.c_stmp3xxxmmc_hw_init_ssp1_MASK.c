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
 int /*<<< orphan*/  PINID_PWM3 ; 
 int /*<<< orphan*/  PINID_PWM4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  mmc_pins ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC7(void)
{
	int ret;

	ret = FUNC6(&mmc_pins, "mmc");
	if (ret)
		goto out;

	/* Configure write protect GPIO pin */
	ret = FUNC3(PINID_PWM4, "mmc wp");
	if (ret)
		goto out_wp;

	FUNC0(PINID_PWM4);

	/* Configure POWER pin as gpio to drive power to MMC slot */
	ret = FUNC3(PINID_PWM3, "mmc power");
	if (ret)
		goto out_power;

	FUNC1(PINID_PWM3, 0);
	FUNC4(100);

	return 0;

out_power:
	FUNC2(PINID_PWM4);
out_wp:
	FUNC5(&mmc_pins, "mmc");
out:
	return ret;
}
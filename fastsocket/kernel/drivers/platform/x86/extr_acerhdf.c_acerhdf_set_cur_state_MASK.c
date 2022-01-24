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
struct thermal_cooling_device {int dummy; } ;

/* Variables and functions */
 int ACERHDF_FAN_AUTO ; 
 int ACERHDF_FAN_OFF ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int fanoff ; 
 int /*<<< orphan*/  kernelmode ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct thermal_cooling_device *cdev,
				 unsigned long state)
{
	int cur_temp, cur_state, err = 0;

	if (!kernelmode)
		return 0;

	err = FUNC2(&cur_temp);
	if (err) {
		FUNC4("error reading temperature, hand off control to BIOS\n");
		goto err_out;
	}

	err = FUNC1(&cur_state);
	if (err) {
		FUNC4("error reading fan state, hand off control to BIOS\n");
		goto err_out;
	}

	if (state == 0) {
		/* turn fan off only if below fanoff temperature */
		if ((cur_state == ACERHDF_FAN_AUTO) &&
		    (cur_temp < fanoff))
			FUNC0(ACERHDF_FAN_OFF);
	} else {
		if (cur_state == ACERHDF_FAN_OFF)
			FUNC0(ACERHDF_FAN_AUTO);
	}
	return 0;

err_out:
	FUNC3();
	return -EINVAL;
}
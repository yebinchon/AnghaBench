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
struct cpuidle_driver {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct cpuidle_driver* cpuidle_curr_driver ; 
 int /*<<< orphan*/  cpuidle_driver_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct cpuidle_driver *drv)
{
	if (!drv)
		return -EINVAL;

	FUNC0(&cpuidle_driver_lock);
	if (cpuidle_curr_driver) {
		FUNC1(&cpuidle_driver_lock);
		return -EBUSY;
	}
	cpuidle_curr_driver = drv;
	FUNC1(&cpuidle_driver_lock);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cpuidle_device {int enabled; int state_count; scalar_t__ registered; int /*<<< orphan*/ * last_state; scalar_t__ last_residency; TYPE_1__* states; } ;
struct TYPE_4__ {int (* enable ) (struct cpuidle_device*) ;} ;
struct TYPE_3__ {scalar_t__ time; scalar_t__ usage; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (struct cpuidle_device*) ; 
 int FUNC1 (struct cpuidle_device*) ; 
 TYPE_2__* cpuidle_curr_governor ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  enabled_devices ; 
 int /*<<< orphan*/  FUNC4 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct cpuidle_device*) ; 

int FUNC7(struct cpuidle_device *dev)
{
	int ret, i;

	if (dev->enabled)
		return 0;
	if (!FUNC2() || !cpuidle_curr_governor)
		return -EIO;
	if (!dev->state_count)
		return -EINVAL;

	if (dev->registered == 0) {
		ret = FUNC0(dev);
		if (ret)
			return ret;
	}

	FUNC4(dev);

	if ((ret = FUNC1(dev)))
		return ret;

	if (cpuidle_curr_governor->enable &&
	    (ret = cpuidle_curr_governor->enable(dev)))
		goto fail_sysfs;

	for (i = 0; i < dev->state_count; i++) {
		dev->states[i].usage = 0;
		dev->states[i].time = 0;
	}
	dev->last_residency = 0;
	dev->last_state = NULL;

	FUNC5();

	dev->enabled = 1;

	enabled_devices++;
	return 0;

fail_sysfs:
	FUNC3(dev);

	return ret;
}
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
struct TYPE_3__ {int /*<<< orphan*/  governor; int /*<<< orphan*/  policy; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct cpufreq_policy {scalar_t__ cur; TYPE_1__ user_policy; int /*<<< orphan*/  governor; int /*<<< orphan*/  policy; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct TYPE_4__ {scalar_t__ (* get ) (unsigned int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (struct cpufreq_policy*,struct cpufreq_policy*) ; 
 struct cpufreq_policy* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*) ; 
 TYPE_2__* cpufreq_driver ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct cpufreq_policy*,struct cpufreq_policy*,int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 

int FUNC10(unsigned int cpu)
{
	struct cpufreq_policy *data = FUNC1(cpu);
	struct cpufreq_policy policy;
	int ret;

	if (!data) {
		ret = -ENODEV;
		goto no_policy;
	}

	if (FUNC8(FUNC5(cpu))) {
		ret = -EINVAL;
		goto fail;
	}

	FUNC4("updating policy for CPU %u\n", cpu);
	FUNC6(&policy, data, sizeof(struct cpufreq_policy));
	policy.min = data->user_policy.min;
	policy.max = data->user_policy.max;
	policy.policy = data->user_policy.policy;
	policy.governor = data->user_policy.governor;

	/* BIOS might change freq behind our back
	  -> ask driver for current freq and notify governors about a change */
	if (cpufreq_driver->get) {
		policy.cur = cpufreq_driver->get(cpu);
		if (!data->cur) {
			FUNC4("Driver did not initialize current freq");
			data->cur = policy.cur;
		} else {
			if (data->cur != policy.cur)
				FUNC3(cpu, data->cur,
								policy.cur);
		}
	}

	ret = FUNC0(data, &policy);

	FUNC9(cpu);

fail:
	FUNC2(data);
no_policy:
	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  transition_latency; } ;
struct cpufreq_policy {scalar_t__ cpu; unsigned int cur; TYPE_1__ cpuinfo; } ;
struct TYPE_6__ {unsigned int frequency; unsigned int index; } ;

/* Variables and functions */
 unsigned int CPUFREQ_ENTRY_INVALID ; 
 int /*<<< orphan*/  CPUFREQ_ETERNAL ; 
 unsigned int CPUFREQ_TABLE_END ; 
 int ENODEV ; 
 unsigned int busfreq ; 
 TYPE_2__* clock_ratio ; 
 unsigned int cpu_khz ; 
 int FUNC0 (struct cpufreq_policy*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 unsigned int max_multiplier ; 
 unsigned int FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct cpufreq_policy *policy)
{
	unsigned int i, f;
	int result;

	if (policy->cpu != 0)
		return -ENODEV;

	/* get frequencies */
	max_multiplier = FUNC2();
	busfreq = cpu_khz / max_multiplier;

	/* table init */
	for (i = 0; (clock_ratio[i].frequency != CPUFREQ_TABLE_END); i++) {
		f = clock_ratio[i].index;
		if (f > max_multiplier)
			clock_ratio[i].frequency = CPUFREQ_ENTRY_INVALID;
		else
			clock_ratio[i].frequency = busfreq * f;
	}

	/* cpuinfo and default policy values */
	policy->cpuinfo.transition_latency = CPUFREQ_ETERNAL;
	policy->cur = busfreq * max_multiplier;

	result = FUNC0(policy, clock_ratio);
	if (result)
		return result;

	FUNC1(clock_ratio, policy->cpu);

	return 0;
}
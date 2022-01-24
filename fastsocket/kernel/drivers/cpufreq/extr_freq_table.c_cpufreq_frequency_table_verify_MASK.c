#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  max_freq; int /*<<< orphan*/  min_freq; } ;
struct cpufreq_policy {unsigned int min; unsigned int max; int /*<<< orphan*/  cpu; TYPE_1__ cpuinfo; } ;
struct cpufreq_frequency_table {unsigned int frequency; } ;

/* Variables and functions */
 unsigned int CPUFREQ_ENTRY_INVALID ; 
 unsigned int CPUFREQ_TABLE_END ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC3(struct cpufreq_policy *policy,
				   struct cpufreq_frequency_table *table)
{
	unsigned int next_larger = ~0;
	unsigned int i;
	unsigned int count = 0;

	FUNC2("request for verification of policy (%u - %u kHz) for cpu %u\n",
					policy->min, policy->max, policy->cpu);

	if (!FUNC0(policy->cpu))
		return -EINVAL;

	FUNC1(policy, policy->cpuinfo.min_freq,
				     policy->cpuinfo.max_freq);

	for (i = 0; (table[i].frequency != CPUFREQ_TABLE_END); i++) {
		unsigned int freq = table[i].frequency;
		if (freq == CPUFREQ_ENTRY_INVALID)
			continue;
		if ((freq >= policy->min) && (freq <= policy->max))
			count++;
		else if ((next_larger > freq) && (freq > policy->max))
			next_larger = freq;
	}

	if (!count)
		policy->max = next_larger;

	FUNC1(policy, policy->cpuinfo.min_freq,
				     policy->cpuinfo.max_freq);

	FUNC2("verification lead to (%u - %u kHz) for cpu %u\n",
				policy->min, policy->max, policy->cpu);

	return 0;
}
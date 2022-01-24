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
struct cpufreq_policy {int min; int max; TYPE_1__ cpuinfo; scalar_t__ cpu; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct cpufreq_policy*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ freq_table ; 
 int /*<<< orphan*/  mpu_clk ; 

int FUNC3(struct cpufreq_policy *policy)
{
	if (freq_table)
		return FUNC1(policy, freq_table);

	if (policy->cpu)
		return -EINVAL;

	FUNC2(policy, policy->cpuinfo.min_freq,
				     policy->cpuinfo.max_freq);

	policy->min = FUNC0(mpu_clk, policy->min * 1000) / 1000;
	policy->max = FUNC0(mpu_clk, policy->max * 1000) / 1000;
	FUNC2(policy, policy->cpuinfo.min_freq,
				     policy->cpuinfo.max_freq);
	return 0;
}
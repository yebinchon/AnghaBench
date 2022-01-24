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
struct cpufreq_policy {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct cpufreq_policy*,unsigned int,unsigned int) ; 
 struct cpufreq_policy* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct cpufreq_policy *policy,
			  unsigned int target_freq,
			  unsigned int relation)
{
	int ret = -EINVAL;

	policy = FUNC1(policy->cpu);
	if (!policy)
		goto no_policy;

	if (FUNC4(FUNC3(policy->cpu)))
		goto fail;

	ret = FUNC0(policy, target_freq, relation);

	FUNC5(policy->cpu);

fail:
	FUNC2(policy);
no_policy:
	return ret;
}
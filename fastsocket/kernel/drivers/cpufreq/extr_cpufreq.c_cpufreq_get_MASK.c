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
struct cpufreq_policy {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 struct cpufreq_policy* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

unsigned int FUNC6(unsigned int cpu)
{
	unsigned int ret_freq = 0;
	struct cpufreq_policy *policy = FUNC1(cpu);

	if (!policy)
		goto out;

	if (FUNC4(FUNC3(cpu)))
		goto out_policy;

	ret_freq = FUNC0(cpu);

	FUNC5(cpu);

out_policy:
	FUNC2(policy);
out:
	return ret_freq;
}
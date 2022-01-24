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
 int EINVAL ; 
 scalar_t__ FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int*) ; 
 unsigned long cur_freq ; 
 int FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  pmac_cpu_freqs ; 
 unsigned long ppc_proc_freq ; 

__attribute__((used)) static int FUNC2(	struct cpufreq_policy *policy,
					unsigned int target_freq,
					unsigned int relation)
{
	unsigned int    newstate = 0;
	int		rc;

	if (FUNC0(policy, pmac_cpu_freqs,
			target_freq, relation, &newstate))
		return -EINVAL;

	rc = FUNC1(newstate, 1);

	ppc_proc_freq = cur_freq * 1000ul;
	return rc;
}
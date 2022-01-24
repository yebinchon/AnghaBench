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
struct TYPE_2__ {int /*<<< orphan*/  transition_latency; } ;
struct cpufreq_policy {scalar_t__ cpu; int /*<<< orphan*/  cur; TYPE_1__ cpuinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_ETERNAL ; 
 int ENODEV ; 
 int FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  cur_freq ; 
 int /*<<< orphan*/  pmac_cpu_freqs ; 

__attribute__((used)) static int FUNC2(struct cpufreq_policy *policy)
{
	if (policy->cpu != 0)
		return -ENODEV;

	policy->cpuinfo.transition_latency	= CPUFREQ_ETERNAL;
	policy->cur = cur_freq;

	FUNC1(pmac_cpu_freqs, policy->cpu);
	return FUNC0(policy, pmac_cpu_freqs);
}
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
struct TYPE_2__ {int transition_latency; } ;
struct cpufreq_policy {int /*<<< orphan*/  cpu; int /*<<< orphan*/  cur; TYPE_1__ cpuinfo; } ;

/* Variables and functions */
 int FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cris_freq_table ; 

__attribute__((used)) static int FUNC3(struct cpufreq_policy *policy)
{
	int result;

	/* cpuinfo and default policy values */
	policy->cpuinfo.transition_latency = 1000000; /* 1ms */
	policy->cur = FUNC2(0);

	result = FUNC0(policy, cris_freq_table);
	if (result)
		return (result);

	FUNC1(cris_freq_table, policy->cpu);

	return 0;
}
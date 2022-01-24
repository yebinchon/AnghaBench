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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct cpufreq_policy*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  powernow_table ; 

__attribute__((used)) static int FUNC2(struct cpufreq_policy *policy,
			    unsigned int target_freq,
			    unsigned int relation)
{
	unsigned int newstate;

	if (FUNC1(policy, powernow_table, target_freq,
				relation, &newstate))
		return -EINVAL;

	FUNC0(newstate);

	return 0;
}
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
struct notifier_block {int dummy; } ;

/* Variables and functions */
#define  CPUFREQ_POLICY_NOTIFIER 129 
#define  CPUFREQ_TRANSITION_NOTIFIER 128 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  cpufreq_policy_notifier_list ; 
 int /*<<< orphan*/  cpufreq_transition_notifier_list ; 
 int FUNC1 (int /*<<< orphan*/ *,struct notifier_block*) ; 

int FUNC2(struct notifier_block *nb, unsigned int list)
{
	int ret;

	switch (list) {
	case CPUFREQ_TRANSITION_NOTIFIER:
		ret = FUNC1(
				&cpufreq_transition_notifier_list, nb);
		break;
	case CPUFREQ_POLICY_NOTIFIER:
		ret = FUNC0(
				&cpufreq_policy_notifier_list, nb);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}
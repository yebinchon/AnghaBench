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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct notifier_block*) ; 
 int /*<<< orphan*/  cpufreq_policy_notifier_list ; 
 int /*<<< orphan*/  cpufreq_transition_notifier_list ; 
 int /*<<< orphan*/  init_cpufreq_transition_notifier_list_called ; 
 int FUNC2 (int /*<<< orphan*/ *,struct notifier_block*) ; 

int FUNC3(struct notifier_block *nb, unsigned int list)
{
	int ret;

	FUNC0(!init_cpufreq_transition_notifier_list_called);

	switch (list) {
	case CPUFREQ_TRANSITION_NOTIFIER:
		ret = FUNC2(
				&cpufreq_transition_notifier_list, nb);
		break;
	case CPUFREQ_POLICY_NOTIFIER:
		ret = FUNC1(
				&cpufreq_policy_notifier_list, nb);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}
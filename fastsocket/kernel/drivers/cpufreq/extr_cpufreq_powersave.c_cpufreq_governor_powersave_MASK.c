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
struct cpufreq_policy {int /*<<< orphan*/  min; } ;

/* Variables and functions */
#define  CPUFREQ_GOV_LIMITS 129 
#define  CPUFREQ_GOV_START 128 
 int /*<<< orphan*/  CPUFREQ_RELATION_L ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct cpufreq_policy *policy,
					unsigned int event)
{
	switch (event) {
	case CPUFREQ_GOV_START:
	case CPUFREQ_GOV_LIMITS:
		FUNC1("setting to %u kHz because of event %u\n",
							policy->min, event);
		FUNC0(policy, policy->min,
						CPUFREQ_RELATION_L);
		break;
	default:
		break;
	}
	return 0;
}
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
struct cpufreq_governor {int dummy; } ;
struct TYPE_2__ {scalar_t__ target; scalar_t__ setpolicy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_NAME_LEN ; 
 unsigned int CPUFREQ_POLICY_PERFORMANCE ; 
 unsigned int CPUFREQ_POLICY_POWERSAVE ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct cpufreq_governor* FUNC0 (char*) ; 
 TYPE_1__* cpufreq_driver ; 
 int /*<<< orphan*/  cpufreq_governor_mutex ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(char *str_governor, unsigned int *policy,
				struct cpufreq_governor **governor)
{
	int err = -EINVAL;

	if (!cpufreq_driver)
		goto out;

	if (cpufreq_driver->setpolicy) {
		if (!FUNC6(str_governor, "performance", CPUFREQ_NAME_LEN)) {
			*policy = CPUFREQ_POLICY_PERFORMANCE;
			err = 0;
		} else if (!FUNC6(str_governor, "powersave",
						CPUFREQ_NAME_LEN)) {
			*policy = CPUFREQ_POLICY_POWERSAVE;
			err = 0;
		}
	} else if (cpufreq_driver->target) {
		struct cpufreq_governor *t;

		FUNC3(&cpufreq_governor_mutex);

		t = FUNC0(str_governor);

		if (t == NULL) {
			char *name = FUNC1(GFP_KERNEL, "cpufreq_%s",
								str_governor);

			if (name) {
				int ret;

				FUNC4(&cpufreq_governor_mutex);
				ret = FUNC5("%s", name);
				FUNC3(&cpufreq_governor_mutex);

				if (ret == 0)
					t = FUNC0(str_governor);
			}

			FUNC2(name);
		}

		if (t != NULL) {
			*governor = t;
			err = 0;
		}

		FUNC4(&cpufreq_governor_mutex);
	}
out:
	return err;
}
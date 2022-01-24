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
struct cpufreq_governor {int /*<<< orphan*/  governor_list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpufreq_governor_list ; 
 int /*<<< orphan*/  cpufreq_governor_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct cpufreq_governor *governor)
{
	int err;

	if (!governor)
		return -EINVAL;

	FUNC2(&cpufreq_governor_mutex);

	err = -EBUSY;
	if (FUNC0(governor->name) == NULL) {
		err = 0;
		FUNC1(&governor->governor_list, &cpufreq_governor_list);
	}

	FUNC3(&cpufreq_governor_mutex);
	return err;
}
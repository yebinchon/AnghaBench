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
struct cpufreq_driver {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  cpu_sysdev_class ; 
 int /*<<< orphan*/  cpufreq_cpu_notifier ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct cpufreq_driver* cpufreq_driver ; 
 int /*<<< orphan*/  cpufreq_driver_lock ; 
 int /*<<< orphan*/  cpufreq_sysdev_driver ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct cpufreq_driver *driver)
{
	unsigned long flags;

	FUNC0();

	if (!cpufreq_driver || (driver != cpufreq_driver)) {
		FUNC1();
		return -EINVAL;
	}

	FUNC2("unregistering driver %s\n", driver->name);

	FUNC3(&cpu_sysdev_class, &cpufreq_sysdev_driver);
	FUNC4(&cpufreq_cpu_notifier);

	FUNC5(&cpufreq_driver_lock, flags);
	cpufreq_driver = NULL;
	FUNC6(&cpufreq_driver_lock, flags);

	return 0;
}
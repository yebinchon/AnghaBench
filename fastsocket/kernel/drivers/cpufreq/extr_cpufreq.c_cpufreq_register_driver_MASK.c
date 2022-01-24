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
struct cpufreq_driver {int flags; int /*<<< orphan*/  name; scalar_t__ setpolicy; int /*<<< orphan*/  target; int /*<<< orphan*/  init; int /*<<< orphan*/  verify; } ;

/* Variables and functions */
 int CPUFREQ_CONST_LOOPS ; 
 int CPUFREQ_STICKY ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_sysdev_class ; 
 int /*<<< orphan*/  cpufreq_cpu_data ; 
 int /*<<< orphan*/  cpufreq_cpu_notifier ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct cpufreq_driver* cpufreq_driver ; 
 int /*<<< orphan*/  cpufreq_driver_lock ; 
 int /*<<< orphan*/  cpufreq_sysdev_driver ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int nr_cpu_ids ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC9(struct cpufreq_driver *driver_data)
{
	unsigned long flags;
	int ret;

	if (!driver_data || !driver_data->verify || !driver_data->init ||
	    ((!driver_data->setpolicy) && (!driver_data->target)))
		return -EINVAL;

	FUNC2("trying to register driver %s\n", driver_data->name);

	if (driver_data->setpolicy)
		driver_data->flags |= CPUFREQ_CONST_LOOPS;

	FUNC7(&cpufreq_driver_lock, flags);
	if (cpufreq_driver) {
		FUNC8(&cpufreq_driver_lock, flags);
		return -EBUSY;
	}
	cpufreq_driver = driver_data;
	FUNC8(&cpufreq_driver_lock, flags);

	ret = FUNC5(&cpu_sysdev_class,
					&cpufreq_sysdev_driver);

	if ((!ret) && !(cpufreq_driver->flags & CPUFREQ_STICKY)) {
		int i;
		ret = -ENODEV;

		/* check for at least one working CPU */
		for (i = 0; i < nr_cpu_ids; i++)
			if (FUNC0(i) && FUNC3(cpufreq_cpu_data, i)) {
				ret = 0;
				break;
			}

		/* if all ->init() calls failed, unregister */
		if (ret) {
			FUNC2("no CPU initialized for driver %s\n",
							driver_data->name);
			FUNC6(&cpu_sysdev_class,
						&cpufreq_sysdev_driver);

			FUNC7(&cpufreq_driver_lock, flags);
			cpufreq_driver = NULL;
			FUNC8(&cpufreq_driver_lock, flags);
		}
	}

	if (!ret) {
		FUNC4(&cpufreq_cpu_notifier);
		FUNC2("driver %s up and running\n", driver_data->name);
		FUNC1();
	}

	return ret;
}
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
struct cpufreq_policy {int /*<<< orphan*/  kobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpufreq_cpu_data ; 
 TYPE_1__* cpufreq_driver ; 
 int /*<<< orphan*/  cpufreq_driver_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int nr_cpu_ids ; 
 struct cpufreq_policy* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

struct cpufreq_policy *FUNC6(unsigned int cpu)
{
	struct cpufreq_policy *data;
	unsigned long flags;

	if (cpu >= nr_cpu_ids)
		goto err_out;

	/* get the cpufreq driver */
	FUNC3(&cpufreq_driver_lock, flags);

	if (!cpufreq_driver)
		goto err_out_unlock;

	if (!FUNC5(cpufreq_driver->owner))
		goto err_out_unlock;


	/* get the CPU */
	data = FUNC2(cpufreq_cpu_data, cpu);

	if (!data)
		goto err_out_put_module;

	if (!FUNC0(&data->kobj))
		goto err_out_put_module;

	FUNC4(&cpufreq_driver_lock, flags);
	return data;

err_out_put_module:
	FUNC1(cpufreq_driver->owner);
err_out_unlock:
	FUNC4(&cpufreq_driver_lock, flags);
err_out:
	return NULL;
}
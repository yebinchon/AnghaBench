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
struct cpumask {int dummy; } ;

/* Variables and functions */
 int NR_CPUS ; 
 struct cpumask* FUNC0 (int) ; 
 int FUNC1 (struct cpumask const*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct cpumask const* FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(int cpu)
{
	int group = NR_CPUS;
#ifdef CONFIG_SCHED_MC
	const struct cpumask *mask = cpu_coregroup_mask(cpu);
	group = cpumask_first(mask);
#elif defined(CONFIG_SCHED_SMT)
	group = cpumask_first(topology_thread_cpumask(cpu));
#else
	return cpu;
#endif

	if (FUNC2(group < NR_CPUS))
		return group;
	return cpu;
}
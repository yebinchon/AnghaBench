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
typedef  int u32 ;
struct eps_cpu_data {int dummy; } ;
struct cpufreq_policy {unsigned int cpu; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MSR_IA32_PERF_STATUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct eps_cpu_data** eps_cpu ; 
 int /*<<< orphan*/  FUNC1 (struct eps_cpu_data*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct eps_cpu_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct cpufreq_policy *policy)
{
	unsigned int cpu = policy->cpu;
	struct eps_cpu_data *centaur;
	u32 lo, hi;

	if (eps_cpu[cpu] == NULL)
		return -ENODEV;
	centaur = eps_cpu[cpu];

	/* Get max frequency */
	FUNC3(MSR_IA32_PERF_STATUS, lo, hi);
	/* Set max frequency */
	FUNC1(centaur, cpu, hi & 0xffff);
	/* Bye */
	FUNC0(policy->cpu);
	FUNC2(eps_cpu[cpu]);
	eps_cpu[cpu] = NULL;
	return 0;
}
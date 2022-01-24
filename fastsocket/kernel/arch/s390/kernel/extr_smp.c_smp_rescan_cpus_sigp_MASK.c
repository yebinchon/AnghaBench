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
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_STATE_CONFIGURED ; 
 int MAX_CPU_ADDRESS ; 
 int /*<<< orphan*/  POLARIZATION_UNKNWN ; 
 int* __cpu_logical_map ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_present_map ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 int nr_cpu_ids ; 
 int /*<<< orphan*/ * smp_cpu_polarization ; 
 int /*<<< orphan*/ * smp_cpu_state ; 

__attribute__((used)) static int FUNC5(cpumask_t avail)
{
	int cpu_id, logical_cpu;

	logical_cpu = FUNC3(&avail);
	if (logical_cpu >= nr_cpu_ids)
		return 0;
	for (cpu_id = 0; cpu_id <= MAX_CPU_ADDRESS; cpu_id++) {
		if (FUNC0(cpu_id))
			continue;
		__cpu_logical_map[logical_cpu] = cpu_id;
		smp_cpu_polarization[logical_cpu] = POLARIZATION_UNKNWN;
		if (!FUNC2(logical_cpu))
			continue;
		FUNC1(logical_cpu, cpu_present_map);
		smp_cpu_state[logical_cpu] = CPU_STATE_CONFIGURED;
		logical_cpu = FUNC4(logical_cpu, &avail);
		if (logical_cpu >= nr_cpu_ids)
			break;
	}
	return 0;
}
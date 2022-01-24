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

/* Variables and functions */
 int* __cpu_logical_map ; 
 int* __cpu_number_map ; 
 int /*<<< orphan*/  cpu_possible_map ; 
 int /*<<< orphan*/  cpu_present_map ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
	const int coreid = FUNC2();
	int cpus;
	int id;

	int core_mask = FUNC3();

	FUNC1(cpu_possible_map);
	__cpu_number_map[coreid] = 0;
	__cpu_logical_map[0] = coreid;
	FUNC0(0, cpu_possible_map);

	cpus = 1;
	for (id = 0; id < 16; id++) {
		if ((id != coreid) && (core_mask & (1 << id))) {
			FUNC0(cpus, cpu_possible_map);
			__cpu_number_map[id] = cpus;
			__cpu_logical_map[cpus] = id;
			cpus++;
		}
	}
	cpu_present_map = cpu_possible_map;

	FUNC4();
}
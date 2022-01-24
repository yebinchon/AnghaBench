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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_online_map ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(unsigned int index)
{
	int i, end, cpu_rover;

	cpu_rover = 0;
	end = index % FUNC2();
	for (i = 0; i < FUNC3(); i++) {
		if (FUNC0(cpu_rover)) {
			if (cpu_rover >= end)
				return cpu_rover;

			cpu_rover++;
		}
	}

	/* Impossible, since num_online_cpus() <= num_possible_cpus() */
	return FUNC1(cpu_online_map);
}
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
 int NR_CPUS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

void
FUNC1(int irq)
{
	int cpu;

	for (cpu = 0; cpu < NR_CPUS; cpu++)
		FUNC0(irq, cpu);
}
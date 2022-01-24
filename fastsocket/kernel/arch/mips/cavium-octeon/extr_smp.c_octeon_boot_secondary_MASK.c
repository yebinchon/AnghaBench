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
struct task_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  octeon_processor_boot ; 
 unsigned long octeon_processor_gp ; 
 scalar_t__ octeon_processor_sp ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(int cpu, struct task_struct *idle)
{
	int count;

	FUNC4("SMP: Booting CPU%02d (CoreId %2d)...\n", cpu,
		FUNC1(cpu));

	octeon_processor_sp = FUNC0(idle);
	octeon_processor_gp = (unsigned long)(FUNC5(idle));
	octeon_processor_boot = FUNC1(cpu);
	FUNC2();

	count = 10000;
	while (octeon_processor_sp && count) {
		/* Waiting for processor to get the SP and GP */
		FUNC6(1);
		count--;
	}
	if (count == 0)
		FUNC3("Secondary boot timeout\n");
}
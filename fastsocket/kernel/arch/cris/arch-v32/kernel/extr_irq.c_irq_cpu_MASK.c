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
struct TYPE_2__ {int cpu; int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int CPU_FIXED ; 
 int FIRST_IRQ ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* irq_allocations ; 
 int /*<<< orphan*/  irq_lock ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(int irq)
{
	int cpu;
        unsigned long flags;

        FUNC3(&irq_lock, flags);
        cpu = irq_allocations[irq - FIRST_IRQ].cpu;

	/* Fixed interrupts stay on the local CPU. */
	if (cpu == CPU_FIXED)
        {
		FUNC4(&irq_lock, flags);
		return FUNC2();
        }


	/* Let the interrupt stay if possible */
	if (FUNC0(cpu, irq_allocations[irq - FIRST_IRQ].mask))
		goto out;

	/* IRQ must be moved to another CPU. */
	cpu = FUNC1(irq_allocations[irq - FIRST_IRQ].mask);
	irq_allocations[irq - FIRST_IRQ].cpu = cpu;
out:
	FUNC4(&irq_lock, flags);
	return cpu;
}
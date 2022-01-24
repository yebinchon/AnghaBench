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
 int FIRST_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  intr_vect ; 
 int /*<<< orphan*/  irq_lock ; 
 int /*<<< orphan*/ * irq_regs ; 
 int /*<<< orphan*/  rw_mask ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(int irq, int cpu)
{
	int intr_mask;
        unsigned long flags;

        FUNC2(&irq_lock, flags);
	if (irq - FIRST_IRQ < 32)
		intr_mask = FUNC0(intr_vect, irq_regs[cpu],
			rw_mask, 0);
	else
		intr_mask = FUNC0(intr_vect, irq_regs[cpu],
			rw_mask, 1);

	/* Remember; 1 let thru, 0 block. */
	if (irq - FIRST_IRQ < 32)
		intr_mask |= (1 << (irq - FIRST_IRQ));
	else
		intr_mask |= (1 << (irq - FIRST_IRQ - 32));

	if (irq - FIRST_IRQ < 32)
		FUNC1(intr_vect, irq_regs[cpu], rw_mask,
			0, intr_mask);
	else
		FUNC1(intr_vect, irq_regs[cpu], rw_mask,
			1, intr_mask);

        FUNC3(&irq_lock, flags);
}
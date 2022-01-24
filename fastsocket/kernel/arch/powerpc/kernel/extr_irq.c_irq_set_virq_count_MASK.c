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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int NR_IRQS ; 
 unsigned int NUM_ISA_INTERRUPTS ; 
 unsigned int irq_virq_count ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 

void FUNC2(unsigned int count)
{
	FUNC1("irq: Trying to set virq count to %d\n", count);

	FUNC0(count < NUM_ISA_INTERRUPTS);
	if (count < NR_IRQS)
		irq_virq_count = count;
}
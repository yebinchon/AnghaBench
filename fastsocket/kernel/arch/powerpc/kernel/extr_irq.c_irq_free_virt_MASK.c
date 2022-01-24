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
struct irq_host {int /*<<< orphan*/  inval_irq; } ;
struct TYPE_2__ {struct irq_host* host; int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 unsigned int NUM_ISA_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  irq_big_lock ; 
 TYPE_1__* irq_map ; 
 unsigned int irq_virq_count ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(unsigned int virq, unsigned int count)
{
	unsigned long flags;
	unsigned int i;

	FUNC0 (virq < NUM_ISA_INTERRUPTS);
	FUNC0 (count == 0 || (virq + count) > irq_virq_count);

	FUNC2(&irq_big_lock, flags);
	for (i = virq; i < (virq + count); i++) {
		struct irq_host *host;

		if (i < NUM_ISA_INTERRUPTS ||
		    (virq + count) > irq_virq_count)
			continue;

		host = irq_map[i].host;
		irq_map[i].hwirq = host->inval_irq;
		FUNC1();
		irq_map[i].host = NULL;
	}
	FUNC3(&irq_big_lock, flags);
}
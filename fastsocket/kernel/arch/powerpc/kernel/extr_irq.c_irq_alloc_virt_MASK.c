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
 unsigned int NO_IRQ ; 
 unsigned int NUM_ISA_INTERRUPTS ; 
 int /*<<< orphan*/  irq_big_lock ; 
 TYPE_1__* irq_map ; 
 unsigned int irq_virq_count ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned int FUNC3(struct irq_host *host,
			    unsigned int count,
			    unsigned int hint)
{
	unsigned long flags;
	unsigned int i, j, found = NO_IRQ;

	if (count == 0 || count > (irq_virq_count - NUM_ISA_INTERRUPTS))
		return NO_IRQ;

	FUNC1(&irq_big_lock, flags);

	/* Use hint for 1 interrupt if any */
	if (count == 1 && hint >= NUM_ISA_INTERRUPTS &&
	    hint < irq_virq_count && irq_map[hint].host == NULL) {
		found = hint;
		goto hint_found;
	}

	/* Look for count consecutive numbers in the allocatable
	 * (non-legacy) space
	 */
	for (i = NUM_ISA_INTERRUPTS, j = 0; i < irq_virq_count; i++) {
		if (irq_map[i].host != NULL)
			j = 0;
		else
			j++;

		if (j == count) {
			found = i - count + 1;
			break;
		}
	}
	if (found == NO_IRQ) {
		FUNC2(&irq_big_lock, flags);
		return NO_IRQ;
	}
 hint_found:
	for (i = found; i < (found + count); i++) {
		irq_map[i].hwirq = host->inval_irq;
		FUNC0();
		irq_map[i].host = host;
	}
	FUNC2(&irq_big_lock, flags);
	return found;
}
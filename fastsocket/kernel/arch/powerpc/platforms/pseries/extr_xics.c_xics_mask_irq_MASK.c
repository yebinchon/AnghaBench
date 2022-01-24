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
struct TYPE_2__ {scalar_t__ hwirq; } ;

/* Variables and functions */
 unsigned int XICS_IPI ; 
 unsigned int XICS_IRQ_SPURIOUS ; 
 TYPE_1__* irq_map ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int virq)
{
	unsigned int irq;

	FUNC0("xics: mask virq %d\n", virq);

	irq = (unsigned int)irq_map[virq].hwirq;
	if (irq == XICS_IPI || irq == XICS_IRQ_SPURIOUS)
		return;
	FUNC1(irq);
}
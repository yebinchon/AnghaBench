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
struct TYPE_2__ {unsigned int* base_addr; unsigned int mask; } ;

/* Variables and functions */
 scalar_t__ GPIO_MAPPED_IRQ_BASE ; 
 unsigned int GPIO_MAPPED_IRQ_GROUP ; 
 unsigned int GROUP0_IRQ_BASE ; 
 int GROUP4_IRQ_BASE ; 
 unsigned int FUNC0 (unsigned int volatile*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int volatile*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 TYPE_1__* intr_group ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(unsigned int irq_nr)
{
	int ip = irq_nr - GROUP0_IRQ_BASE;
	unsigned int group, intr_bit, mask;
	volatile unsigned int *addr;

	if (ip < 0) {
		FUNC2(irq_nr);
	} else {
		group = ip >> 5;

		ip &= (1 << 5) - 1;
		intr_bit = 1 << ip;
		addr = intr_group[group].base_addr;
		mask = FUNC0(addr);
		mask |= intr_bit;
		FUNC1(addr, mask);

		/* There is a maximum of 14 GPIO interrupts */
		if (group == GPIO_MAPPED_IRQ_GROUP && irq_nr <= (GROUP4_IRQ_BASE + 13))
			FUNC4(0, irq_nr - GPIO_MAPPED_IRQ_BASE);

		/*
		 * if there are no more interrupts enabled in this
		 * group, disable corresponding IP
		 */
		if (mask == intr_group[group].mask)
			FUNC2(FUNC3(group));
	}
}
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
struct TYPE_2__ {unsigned int* base_addr; } ;

/* Variables and functions */
 unsigned int GROUP0_IRQ_BASE ; 
 unsigned int FUNC0 (unsigned int volatile*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int volatile*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 TYPE_1__* intr_group ; 

__attribute__((used)) static void FUNC4(unsigned int irq_nr)
{
	int ip = irq_nr - GROUP0_IRQ_BASE;
	unsigned int group, intr_bit;
	volatile unsigned int *addr;

	if (ip < 0)
		FUNC2(irq_nr);
	else {
		group = ip >> 5;

		ip &= (1 << 5) - 1;
		intr_bit = 1 << ip;

		FUNC2(FUNC3(group));

		addr = intr_group[group].base_addr;
		FUNC1(addr, FUNC0(addr) & ~intr_bit);
	}
}
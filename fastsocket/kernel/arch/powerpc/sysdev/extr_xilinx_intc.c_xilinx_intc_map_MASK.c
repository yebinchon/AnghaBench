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
struct irq_host {int /*<<< orphan*/  host_data; } ;
typedef  size_t irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ IRQ_TYPE_LEVEL_HIGH ; 
 scalar_t__ IRQ_TYPE_LEVEL_LOW ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xilinx_intc_edge_irqchip ; 
 int /*<<< orphan*/  xilinx_intc_level_irqchip ; 
 scalar_t__* xilinx_intc_typetable ; 

__attribute__((used)) static int FUNC2(struct irq_host *h, unsigned int virq,
				  irq_hw_number_t irq)
{
	FUNC1(virq, h->host_data);

	if (xilinx_intc_typetable[irq] == IRQ_TYPE_LEVEL_HIGH ||
	    xilinx_intc_typetable[irq] == IRQ_TYPE_LEVEL_LOW) {
		FUNC0(virq, &xilinx_intc_level_irqchip,
			handle_level_irq);
	} else {
		FUNC0(virq, &xilinx_intc_edge_irqchip,
			handle_edge_irq);
	}
	return 0;
}
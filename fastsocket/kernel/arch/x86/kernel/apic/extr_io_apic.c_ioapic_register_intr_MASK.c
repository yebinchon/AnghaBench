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
struct irq_desc {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 unsigned long IOAPIC_AUTO ; 
 unsigned long IOAPIC_LEVEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_LEVEL ; 
 int /*<<< orphan*/  IRQ_MOVE_PCNTXT ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_fasteoi_irq ; 
 int /*<<< orphan*/  ioapic_chip ; 
 int /*<<< orphan*/  ir_ioapic_chip ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(int irq, struct irq_desc *desc, unsigned long trigger)
{

	if ((trigger == IOAPIC_AUTO && FUNC0(irq)) ||
	    trigger == IOAPIC_LEVEL)
		desc->status |= IRQ_LEVEL;
	else
		desc->status &= ~IRQ_LEVEL;

	if (FUNC1(irq)) {
		desc->status |= IRQ_MOVE_PCNTXT;
		if (trigger)
			FUNC2(irq, &ir_ioapic_chip,
						      handle_fasteoi_irq,
						     "fasteoi");
		else
			FUNC2(irq, &ir_ioapic_chip,
						      handle_edge_irq, "edge");
		return;
	}

	if ((trigger == IOAPIC_AUTO && FUNC0(irq)) ||
	    trigger == IOAPIC_LEVEL)
		FUNC2(irq, &ioapic_chip,
					      handle_fasteoi_irq,
					      "fasteoi");
	else
		FUNC2(irq, &ioapic_chip,
					      handle_edge_irq, "edge");
}
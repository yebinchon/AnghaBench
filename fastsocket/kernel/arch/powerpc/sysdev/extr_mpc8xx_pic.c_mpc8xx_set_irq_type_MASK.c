#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct irq_desc {unsigned int status; int /*<<< orphan*/  handle_irq; } ;
typedef  int irq_hw_number_t ;
struct TYPE_4__ {scalar_t__ hwirq; } ;
struct TYPE_3__ {int /*<<< orphan*/  sc_siel; } ;

/* Variables and functions */
 unsigned int IRQ_LEVEL ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 struct irq_desc* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* irq_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__* siu_reg ; 

__attribute__((used)) static int FUNC3(unsigned int virq, unsigned int flow_type)
{
	struct irq_desc *desc = FUNC0(virq);

	desc->status &= ~(IRQ_TYPE_SENSE_MASK | IRQ_LEVEL);
	desc->status |= flow_type & IRQ_TYPE_SENSE_MASK;
	if (flow_type & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW))
		desc->status |= IRQ_LEVEL;

	if (flow_type & IRQ_TYPE_EDGE_FALLING) {
		irq_hw_number_t hw = (unsigned int)irq_map[virq].hwirq;
		unsigned int siel = FUNC1(&siu_reg->sc_siel);

		/* only external IRQ senses are programmable */
		if ((hw & 1) == 0) {
			siel |= (0x80000000 >> hw);
			FUNC2(&siu_reg->sc_siel, siel);
			desc->handle_irq = handle_edge_irq;
		}
	}
	return 0;
}
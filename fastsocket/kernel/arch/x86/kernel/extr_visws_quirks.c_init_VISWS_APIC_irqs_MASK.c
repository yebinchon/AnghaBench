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
struct irq_desc {int depth; int /*<<< orphan*/ * chip; scalar_t__ action; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CO_APIC_LAST ; 
 int CO_IRQ_8259 ; 
 int CO_IRQ_APIC0 ; 
 int CO_IRQ_IDE0 ; 
 int CO_IRQ_IDE1 ; 
 int /*<<< orphan*/  IRQ_DISABLED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  cascade_action ; 
 int /*<<< orphan*/  cobalt_irq_type ; 
 struct irq_desc* FUNC1 (int) ; 
 int /*<<< orphan*/  master_action ; 
 int /*<<< orphan*/  piix4_master_irq_type ; 
 int /*<<< orphan*/  piix4_virtual_irq_type ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	int i;

	for (i = 0; i < CO_IRQ_APIC0 + CO_APIC_LAST + 1; i++) {
		struct irq_desc *desc = FUNC1(i);

		desc->status = IRQ_DISABLED;
		desc->action = 0;
		desc->depth = 1;

		if (i == 0) {
			desc->chip = &cobalt_irq_type;
		}
		else if (i == CO_IRQ_IDE0) {
			desc->chip = &cobalt_irq_type;
		}
		else if (i == CO_IRQ_IDE1) {
			desc->chip = &cobalt_irq_type;
		}
		else if (i == CO_IRQ_8259) {
			desc->chip = &piix4_master_irq_type;
		}
		else if (i < CO_IRQ_APIC0) {
			desc->chip = &piix4_virtual_irq_type;
		}
		else if (FUNC0(i)) {
			desc->chip = &cobalt_irq_type;
		}
	}

	FUNC2(CO_IRQ_8259, &master_action);
	FUNC2(2, &cascade_action);
}
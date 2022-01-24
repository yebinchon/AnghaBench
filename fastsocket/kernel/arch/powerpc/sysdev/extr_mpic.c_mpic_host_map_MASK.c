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
struct irq_chip {int dummy; } ;
struct mpic {scalar_t__ spurious_vec; scalar_t__* ipi_vecs; int flags; scalar_t__ irq_count; struct irq_chip hc_ht_irq; struct irq_chip hc_irq; struct irq_chip hc_ipi; scalar_t__ protected; } ;
struct irq_host {struct mpic* host_data; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int MPIC_PRIMARY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  handle_fasteoi_irq ; 
 int /*<<< orphan*/  handle_percpu_irq ; 
 scalar_t__ FUNC2 (struct mpic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mpic*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,struct irq_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,struct mpic*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct irq_host *h, unsigned int virq,
			 irq_hw_number_t hw)
{
	struct mpic *mpic = h->host_data;
	struct irq_chip *chip;

	FUNC0("mpic: map virq %d, hwirq 0x%lx\n", virq, hw);

	if (hw == mpic->spurious_vec)
		return -EINVAL;
	if (mpic->protected && FUNC7(hw, mpic->protected))
		return -EINVAL;

#ifdef CONFIG_SMP
	else if (hw >= mpic->ipi_vecs[0]) {
		WARN_ON(!(mpic->flags & MPIC_PRIMARY));

		DBG("mpic: mapping as IPI\n");
		set_irq_chip_data(virq, mpic);
		set_irq_chip_and_handler(virq, &mpic->hc_ipi,
					 handle_percpu_irq);
		return 0;
	}
#endif /* CONFIG_SMP */

	if (hw >= mpic->irq_count)
		return -EINVAL;

	FUNC3(mpic, hw);

	/* Default chip */
	chip = &mpic->hc_irq;

#ifdef CONFIG_MPIC_U3_HT_IRQS
	/* Check for HT interrupts, override vecpri */
	if (mpic_is_ht_interrupt(mpic, hw))
		chip = &mpic->hc_ht_irq;
#endif /* CONFIG_MPIC_U3_HT_IRQS */

	FUNC0("mpic: mapping to irq chip @%p\n", chip);

	FUNC5(virq, mpic);
	FUNC4(virq, chip, handle_fasteoi_irq);

	/* Set default irq type */
	FUNC6(virq, IRQ_TYPE_NONE);

	return 0;
}
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
struct irq_host {int dummy; } ;
struct irq_chip {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;
struct TYPE_2__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TYPE_EDGE_FALLING ; 
 struct irq_chip fsl_msi_chip ; 
 TYPE_1__* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct irq_host *h, unsigned int virq,
				irq_hw_number_t hw)
{
	struct irq_chip *chip = &fsl_msi_chip;

	FUNC0(virq)->status |= IRQ_TYPE_EDGE_FALLING;

	FUNC1(virq, chip, handle_edge_irq);

	return 0;
}
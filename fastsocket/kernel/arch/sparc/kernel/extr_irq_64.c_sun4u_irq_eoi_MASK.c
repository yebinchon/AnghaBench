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
struct irq_handler_data {int /*<<< orphan*/  iclr; } ;
struct irq_desc {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICLR_IDLE ; 
 int IRQ_DISABLED ; 
 int IRQ_INPROGRESS ; 
 struct irq_handler_data* FUNC0 (unsigned int) ; 
 struct irq_desc* irq_desc ; 
 scalar_t__ FUNC1 (struct irq_handler_data*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned int virt_irq)
{
	struct irq_handler_data *data = FUNC0(virt_irq);
	struct irq_desc *desc = irq_desc + virt_irq;

	if (FUNC2(desc->status & (IRQ_DISABLED|IRQ_INPROGRESS)))
		return;

	if (FUNC1(data))
		FUNC3(ICLR_IDLE, data->iclr);
}
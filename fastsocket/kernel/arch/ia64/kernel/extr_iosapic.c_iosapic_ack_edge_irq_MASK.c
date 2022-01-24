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
struct irq_desc {int status; } ;

/* Variables and functions */
 int IRQ_DISABLED ; 
 int IRQ_PENDING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct irq_desc* irq_desc ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static void
FUNC3 (unsigned int irq)
{
	struct irq_desc *idesc = irq_desc + irq;

	FUNC0(irq);
	FUNC2(irq);
	/*
	 * Once we have recorded IRQ_PENDING already, we can mask the
	 * interrupt for real. This prevents IRQ storms from unhandled
	 * devices.
	 */
	if ((idesc->status & (IRQ_PENDING|IRQ_DISABLED)) ==
	    (IRQ_PENDING|IRQ_DISABLED))
		FUNC1(irq);
}
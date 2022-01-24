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

/* Variables and functions */
 int /*<<< orphan*/  IRQFLAG_STARTED ; 
 unsigned int PNX833X_PIC_IRQ_BASE ; 
 int /*<<< orphan*/ * irqflags ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  pnx833x_irq_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC3(unsigned int irq)
{
	unsigned long flags;
	unsigned int pic_irq = irq - PNX833X_PIC_IRQ_BASE;

	FUNC1(&pnx833x_irq_lock, flags);

	irqflags[pic_irq] = IRQFLAG_STARTED;	/* started, not disabled */
	FUNC0(pic_irq);

	FUNC2(&pnx833x_irq_lock, flags);
	return 0;
}
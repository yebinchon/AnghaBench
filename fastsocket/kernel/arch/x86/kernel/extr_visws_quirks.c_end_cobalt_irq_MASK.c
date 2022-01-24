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
 int IRQ_INPROGRESS ; 
 int /*<<< orphan*/  cobalt_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct irq_desc* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned int irq)
{
	unsigned long flags;
	struct irq_desc *desc = FUNC1(irq);

	FUNC2(&cobalt_lock, flags);
	if (!(desc->status & (IRQ_DISABLED | IRQ_INPROGRESS)))
		FUNC0(irq);
	FUNC3(&cobalt_lock, flags);
}
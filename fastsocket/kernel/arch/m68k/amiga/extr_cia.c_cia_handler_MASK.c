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
struct ciabase {int cia_irq; int /*<<< orphan*/  int_mask; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  intreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIA_ICR_ALL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 TYPE_1__ amiga_custom ; 
 unsigned char FUNC0 (struct ciabase*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct ciabase *base = dev_id;
	int mach_irq;
	unsigned char ints;

	mach_irq = base->cia_irq;
	ints = FUNC0(base, CIA_ICR_ALL);
	amiga_custom.intreq = base->int_mask;
	for (; ints; mach_irq++, ints >>= 1) {
		if (ints & 1)
			FUNC1(mach_irq);
	}
	return IRQ_HANDLED;
}
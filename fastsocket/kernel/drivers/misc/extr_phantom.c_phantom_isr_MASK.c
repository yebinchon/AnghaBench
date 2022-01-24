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
typedef  unsigned int u32 ;
struct phm_regs {int mask; int* values; int /*<<< orphan*/  count; } ;
struct phantom_device {int status; int ctl_reg; int /*<<< orphan*/  wait; int /*<<< orphan*/  counter; scalar_t__ iaddr; int /*<<< orphan*/  regs_lock; scalar_t__ oaddr; struct phm_regs oregs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int PHB_NOT_OH ; 
 scalar_t__ PHN_CONTROL ; 
 int PHN_CTL_AMP ; 
 unsigned int PHN_CTL_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct phantom_device *dev = data;
	unsigned int i;
	u32 ctl;

	FUNC5(&dev->regs_lock);
	ctl = FUNC2(dev->iaddr + PHN_CONTROL);
	if (!(ctl & PHN_CTL_IRQ)) {
		FUNC6(&dev->regs_lock);
		return IRQ_NONE;
	}

	FUNC3(0, dev->iaddr);
	FUNC3(0xc0, dev->iaddr);

	if (dev->status & PHB_NOT_OH) {
		struct phm_regs *r = &dev->oregs;
		u32 m = FUNC4(r->count, 8U);

		for (i = 0; i < m; i++)
			if (r->mask & FUNC0(i))
				FUNC3(r->values[i], dev->oaddr + i);

		dev->ctl_reg ^= PHN_CTL_AMP;
		FUNC3(dev->ctl_reg, dev->iaddr + PHN_CONTROL);
	}
	FUNC6(&dev->regs_lock);

	FUNC2(dev->iaddr); /* PCI posting */

	FUNC1(&dev->counter);
	FUNC7(&dev->wait);

	return IRQ_HANDLED;
}
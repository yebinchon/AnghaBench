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
struct sgiseeq_regs {int dummy; } ;
struct sgiseeq_private {scalar_t__ tx_old; scalar_t__ tx_new; int /*<<< orphan*/  tx_lock; struct sgiseeq_regs* sregs; struct hpc3_ethregs* hregs; } ;
struct net_device {int dummy; } ;
struct hpc3_ethregs {int /*<<< orphan*/  reset; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HPC3_ERST_CLRIRQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (struct sgiseeq_private*) ; 
 struct sgiseeq_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct sgiseeq_private*,struct hpc3_ethregs*,struct sgiseeq_regs*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct sgiseeq_private*,struct hpc3_ethregs*,struct sgiseeq_regs*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *) dev_id;
	struct sgiseeq_private *sp = FUNC1(dev);
	struct hpc3_ethregs *hregs = sp->hregs;
	struct sgiseeq_regs *sregs = sp->sregs;

	FUNC6(&sp->tx_lock);

	/* Ack the IRQ and set software state. */
	hregs->reset = HPC3_ERST_CLRIRQ;

	/* Always check for received packets. */
	FUNC4(dev, sp, hregs, sregs);

	/* Only check for tx acks if we have something queued. */
	if (sp->tx_old != sp->tx_new)
		FUNC5(dev, sp, hregs, sregs);

	if ((FUNC0(sp) > 0) && FUNC2(dev)) {
		FUNC3(dev);
	}
	FUNC7(&sp->tx_lock);

	return IRQ_HANDLED;
}
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
struct c2_dev {scalar_t__ regs; int /*<<< orphan*/  netdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ C2_DISR ; 
 scalar_t__ C2_NISR0 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct c2_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	unsigned int netisr0, dmaisr;
	int handled = 0;
	struct c2_dev *c2dev = (struct c2_dev *) dev_id;

	/* Process CCILNET interrupts */
	netisr0 = FUNC3(c2dev->regs + C2_NISR0);
	if (netisr0) {

		/*
		 * There is an issue with the firmware that always
		 * provides the status of RX for both TX & RX
		 * interrupts.  So process both queues here.
		 */
		FUNC1(c2dev->netdev);
		FUNC2(c2dev->netdev);

		/* Clear the interrupt */
		FUNC4(netisr0, c2dev->regs + C2_NISR0);
		handled++;
	}

	/* Process RNIC interrupts */
	dmaisr = FUNC3(c2dev->regs + C2_DISR);
	if (dmaisr) {
		FUNC4(dmaisr, c2dev->regs + C2_DISR);
		FUNC0(c2dev);
		handled++;
	}

	if (handled) {
		return IRQ_HANDLED;
	} else {
		return IRQ_NONE;
	}
}
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
struct ucb1x00_irq {int /*<<< orphan*/  devid; int /*<<< orphan*/  (* fn ) (unsigned int,int /*<<< orphan*/ ) ;} ;
struct ucb1x00 {struct ucb1x00_irq* irq_handler; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  UCB_IE_CLEAR ; 
 int /*<<< orphan*/  UCB_IE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ucb1x00*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucb1x00*) ; 
 unsigned int FUNC3 (struct ucb1x00*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ucb1x00*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irqnr, void *devid)
{
	struct ucb1x00 *ucb = devid;
	struct ucb1x00_irq *irq;
	unsigned int isr, i;

	FUNC2(ucb);
	isr = FUNC3(ucb, UCB_IE_STATUS);
	FUNC4(ucb, UCB_IE_CLEAR, isr);
	FUNC4(ucb, UCB_IE_CLEAR, 0);

	for (i = 0, irq = ucb->irq_handler; i < 16 && isr; i++, isr >>= 1, irq++)
		if (isr & 1 && irq->fn)
			irq->fn(i, irq->devid);
	FUNC1(ucb);

	return IRQ_HANDLED;
}
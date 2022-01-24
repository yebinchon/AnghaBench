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
struct ucb1400_ts {int irq; int irq_pending; int /*<<< orphan*/  ts_wait; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irqnr, void *devid)
{
	struct ucb1400_ts *ucb = devid;

	if (irqnr == ucb->irq) {
		FUNC0(ucb->irq);
		ucb->irq_pending = 1;
		FUNC1(&ucb->ts_wait);
		return IRQ_HANDLED;
	}
	return IRQ_NONE;
}
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
struct sge_rspq {int /*<<< orphan*/  lock; int /*<<< orphan*/  unhandled_irqs; } ;
struct sge_qset {int /*<<< orphan*/  adap; struct sge_rspq rspq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *cookie)
{
	struct sge_qset *qs = cookie;
	struct sge_rspq *q = &qs->rspq;

	FUNC1(&q->lock);

	if (FUNC0(qs->adap, q) < 0)
		q->unhandled_irqs++;
	FUNC2(&q->lock);
	return IRQ_HANDLED;
}
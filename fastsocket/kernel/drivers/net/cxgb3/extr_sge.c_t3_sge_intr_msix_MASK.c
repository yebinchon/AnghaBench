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
struct sge_rspq {int /*<<< orphan*/  lock; int /*<<< orphan*/  cidx; int /*<<< orphan*/  next_holdoff; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  unhandled_irqs; } ;
struct sge_qset {struct sge_rspq rspq; struct adapter* adap; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_GTS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct adapter*,struct sge_qset*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *cookie)
{
	struct sge_qset *qs = cookie;
	struct adapter *adap = qs->adap;
	struct sge_rspq *q = &qs->rspq;

	FUNC4(&q->lock);
	if (FUNC3(adap, qs, -1) == 0)
		q->unhandled_irqs++;
	FUNC6(adap, A_SG_GTS, FUNC2(q->cntxt_id) |
		     FUNC1(q->next_holdoff) | FUNC0(q->cidx));
	FUNC5(&q->lock);
	return IRQ_HANDLED;
}
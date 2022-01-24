#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sge_rspq {int /*<<< orphan*/  lock; int /*<<< orphan*/  unhandled_irqs; int /*<<< orphan*/  cidx; int /*<<< orphan*/  next_holdoff; int /*<<< orphan*/  cntxt_id; } ;
struct TYPE_5__ {TYPE_3__* qs; } ;
struct TYPE_4__ {int nports; } ;
struct adapter {TYPE_2__ sge; TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {struct sge_rspq rspq; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_GTS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct adapter*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *cookie)
{
	int new_packets = 0;
	struct adapter *adap = cookie;
	struct sge_rspq *q = &adap->sge.qs[0].rspq;

	FUNC4(&q->lock);

	if (FUNC3(adap, &adap->sge.qs[0], -1)) {
		FUNC7(adap, A_SG_GTS, FUNC2(q->cntxt_id) |
			     FUNC1(q->next_holdoff) | FUNC0(q->cidx));
		new_packets = 1;
	}

	if (adap->params.nports == 2 &&
	    FUNC3(adap, &adap->sge.qs[1], -1)) {
		struct sge_rspq *q1 = &adap->sge.qs[1].rspq;

		FUNC7(adap, A_SG_GTS, FUNC2(q1->cntxt_id) |
			     FUNC1(q1->next_holdoff) |
			     FUNC0(q1->cidx));
		new_packets = 1;
	}

	if (!new_packets && FUNC6(adap) == 0)
		q->unhandled_irqs++;

	FUNC5(&q->lock);
	return IRQ_HANDLED;
}
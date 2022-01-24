#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ desc; } ;
struct sge_ofld_txq {int /*<<< orphan*/  qresume_tsk; TYPE_1__ q; } ;
struct sge_ctrl_txq {int /*<<< orphan*/  qresume_tsk; TYPE_1__ q; } ;
struct TYPE_4__ {scalar_t__ function; } ;
struct sge {struct sge_ofld_txq* ctrlq; struct sge_ofld_txq* ofldtxq; TYPE_2__ tx_timer; TYPE_2__ rx_timer; } ;
struct adapter {struct sge sge; } ;

/* Variables and functions */
 int FUNC0 (struct sge_ofld_txq*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct adapter *adap)
{
	int i;
	struct sge *s = &adap->sge;

	if (FUNC2())  /* actions below require waiting */
		return;

	if (s->rx_timer.function)
		FUNC1(&s->rx_timer);
	if (s->tx_timer.function)
		FUNC1(&s->tx_timer);

	for (i = 0; i < FUNC0(s->ofldtxq); i++) {
		struct sge_ofld_txq *q = &s->ofldtxq[i];

		if (q->q.desc)
			FUNC3(&q->qresume_tsk);
	}
	for (i = 0; i < FUNC0(s->ctrlq); i++) {
		struct sge_ctrl_txq *cq = &s->ctrlq[i];

		if (cq->q.desc)
			FUNC3(&cq->qresume_tsk);
	}
}
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
struct sge {scalar_t__ stopped_tx_queues; TYPE_1__* tx_sched; struct cmdQ* cmdQ; } ;
struct cmdQ {scalar_t__ processed; scalar_t__ cleaned; scalar_t__ in_use; int /*<<< orphan*/  status; } ;
struct adapter {scalar_t__ regs; struct sge* sge; } ;
struct TYPE_2__ {int /*<<< orphan*/  sched_tsk; } ;

/* Variables and functions */
 scalar_t__ A_SG_DOORBELL ; 
 int /*<<< orphan*/  CMDQ_STAT_LAST_PKT_DB ; 
 int /*<<< orphan*/  CMDQ_STAT_RUNNING ; 
 unsigned int F_CMDQ0_ENABLE ; 
 unsigned int F_FL0_ENABLE ; 
 unsigned int F_FL1_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sge*) ; 
 int /*<<< orphan*/  FUNC2 (struct sge*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC8(struct adapter *adapter,
					  unsigned int flags,
					  unsigned int pr0)
{
	struct sge *sge = adapter->sge;
	struct cmdQ *cmdq = &sge->cmdQ[0];

	cmdq->processed += pr0;
	if (flags & (F_FL0_ENABLE | F_FL1_ENABLE)) {
		FUNC1(sge);
		flags &= ~(F_FL0_ENABLE | F_FL1_ENABLE);
	}
	if (flags & F_CMDQ0_ENABLE) {
		FUNC0(CMDQ_STAT_RUNNING, &cmdq->status);

		if (cmdq->cleaned + cmdq->in_use != cmdq->processed &&
		    !FUNC5(CMDQ_STAT_LAST_PKT_DB, &cmdq->status)) {
			FUNC3(CMDQ_STAT_RUNNING, &cmdq->status);
			FUNC7(F_CMDQ0_ENABLE, adapter->regs + A_SG_DOORBELL);
		}
		if (sge->tx_sched)
			FUNC4(&sge->tx_sched->sched_tsk);

		flags &= ~F_CMDQ0_ENABLE;
	}

	if (FUNC6(sge->stopped_tx_queues != 0))
		FUNC2(sge);

	return flags;
}
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
struct sge_qset {TYPE_1__* txq; int /*<<< orphan*/  txq_stopped; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  qresume_tsk; int /*<<< orphan*/  restarts; } ;

/* Variables and functions */
 size_t TXQ_CTRL ; 
 size_t TXQ_ETH ; 
 size_t TXQ_OFLD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sge_qset *qs)
{
	if (FUNC5(TXQ_ETH, &qs->txq_stopped) &&
	    FUNC2(&qs->txq[TXQ_ETH]) &&
	    FUNC4(TXQ_ETH, &qs->txq_stopped)) {
		qs->txq[TXQ_ETH].restarts++;
		if (FUNC0(qs->netdev))
			FUNC1(qs->tx_q);
	}

	if (FUNC5(TXQ_OFLD, &qs->txq_stopped) &&
	    FUNC2(&qs->txq[TXQ_OFLD]) &&
	    FUNC4(TXQ_OFLD, &qs->txq_stopped)) {
		qs->txq[TXQ_OFLD].restarts++;
		FUNC3(&qs->txq[TXQ_OFLD].qresume_tsk);
	}
	if (FUNC5(TXQ_CTRL, &qs->txq_stopped) &&
	    FUNC2(&qs->txq[TXQ_CTRL]) &&
	    FUNC4(TXQ_CTRL, &qs->txq_stopped)) {
		qs->txq[TXQ_CTRL].restarts++;
		FUNC3(&qs->txq[TXQ_CTRL].qresume_tsk);
	}
}
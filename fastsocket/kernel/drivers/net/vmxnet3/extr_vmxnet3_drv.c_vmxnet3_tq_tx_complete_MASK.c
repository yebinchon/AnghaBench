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
union Vmxnet3_GenericDesc {int /*<<< orphan*/  tcd; } ;
struct TYPE_2__ {int next2proc; scalar_t__ gen; union Vmxnet3_GenericDesc* base; } ;
struct vmxnet3_tx_queue {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_ring; TYPE_1__ comp_ring; } ;
struct vmxnet3_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct vmxnet3_tx_queue*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (struct vmxnet3_tx_queue*,struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct vmxnet3_tx_queue*,struct vmxnet3_adapter*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct vmxnet3_tx_queue*,int /*<<< orphan*/ ,struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC12(struct vmxnet3_tx_queue *tq,
			struct vmxnet3_adapter *adapter)
{
	int completed = 0;
	union Vmxnet3_GenericDesc *gdesc;

	gdesc = tq->comp_ring.base + tq->comp_ring.next2proc;
	while (FUNC0(&gdesc->tcd) == tq->comp_ring.gen) {
		completed += FUNC11(FUNC1(
					       &gdesc->tcd), tq, adapter->pdev,
					       adapter);

		FUNC8(&tq->comp_ring);
		gdesc = tq->comp_ring.base + tq->comp_ring.next2proc;
	}

	if (completed) {
		FUNC4(&tq->tx_lock);
		if (FUNC6(FUNC9(tq, adapter) &&
			     FUNC7(&tq->tx_ring) >
			     FUNC2(tq) &&
			     FUNC3(adapter->netdev))) {
			FUNC10(tq, adapter);
		}
		FUNC5(&tq->tx_lock);
	}
	return completed;
}
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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct iwl_txq {TYPE_1__ q; } ;
struct iwl_trans_pcie {int /*<<< orphan*/  queue_stopped; } ;
struct iwl_trans {int /*<<< orphan*/  op_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct iwl_trans *trans,
				  struct iwl_txq *txq)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);

	if (!FUNC3(txq->q.id, trans_pcie->queue_stopped)) {
		FUNC2(trans->op_mode, txq->q.id);
		FUNC0(trans, "Stop hwq %d\n", txq->q.id);
	} else
		FUNC0(trans, "hwq %d already stopped\n",
				    txq->q.id);
}
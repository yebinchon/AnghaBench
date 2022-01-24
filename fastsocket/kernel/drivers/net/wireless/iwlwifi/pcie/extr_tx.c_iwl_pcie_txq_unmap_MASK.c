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
struct iwl_queue {scalar_t__ write_ptr; scalar_t__ read_ptr; int /*<<< orphan*/  n_bd; } ;
struct iwl_txq {int active; int /*<<< orphan*/  lock; struct iwl_queue q; } ;
struct iwl_trans_pcie {struct iwl_txq* txq; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int,scalar_t__) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,struct iwl_txq*) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,struct iwl_txq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct iwl_trans *trans, int txq_id)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	struct iwl_txq *txq = &trans_pcie->txq[txq_id];
	struct iwl_queue *q = &txq->q;

	if (!q->n_bd)
		return;

	FUNC5(&txq->lock);
	while (q->write_ptr != q->read_ptr) {
		FUNC0(trans, "Q %d Free %d\n",
				   txq_id, q->read_ptr);
		FUNC2(trans, txq);
		q->read_ptr = FUNC3(q->read_ptr, q->n_bd);
	}
	txq->active = false;
	FUNC6(&txq->lock);

	/* just in case - this queue may have been stopped */
	FUNC4(trans, txq);
}
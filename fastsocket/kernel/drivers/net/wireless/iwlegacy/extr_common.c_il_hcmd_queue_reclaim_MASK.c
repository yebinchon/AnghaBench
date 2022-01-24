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
struct il_queue {int n_bd; int read_ptr; int /*<<< orphan*/  write_ptr; } ;
struct il_tx_queue {struct il_queue q; } ;
struct il_priv {int /*<<< orphan*/  restart; int /*<<< orphan*/  workqueue; struct il_tx_queue* txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,...) ; 
 void* FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (struct il_queue*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct il_priv *il, int txq_id, int idx, int cmd_idx)
{
	struct il_tx_queue *txq = &il->txq[txq_id];
	struct il_queue *q = &txq->q;
	int nfreed = 0;

	if (idx >= q->n_bd || FUNC2(q, idx) == 0) {
		FUNC0("Read idx for DMA queue txq id (%d), idx %d, "
		       "is out of range [0-%d] %d %d.\n", txq_id, idx, q->n_bd,
		       q->write_ptr, q->read_ptr);
		return;
	}

	for (idx = FUNC1(idx, q->n_bd); q->read_ptr != idx;
	     q->read_ptr = FUNC1(q->read_ptr, q->n_bd)) {

		if (nfreed++ > 0) {
			FUNC0("HCMD skipped: idx (%d) %d %d\n", idx,
			       q->write_ptr, q->read_ptr);
			FUNC3(il->workqueue, &il->restart);
		}

	}
}
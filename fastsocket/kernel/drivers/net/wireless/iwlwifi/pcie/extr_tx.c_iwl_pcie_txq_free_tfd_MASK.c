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
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int read_ptr; } ;
struct iwl_txq {TYPE_1__* entries; int /*<<< orphan*/  lock; TYPE_2__ q; struct iwl_tfd* tfds; } ;
struct iwl_trans {int /*<<< orphan*/  op_mode; } ;
struct iwl_tfd {int dummy; } ;
struct TYPE_3__ {struct sk_buff* skb; int /*<<< orphan*/  meta; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ *,struct iwl_tfd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct iwl_trans *trans, struct iwl_txq *txq)
{
	struct iwl_tfd *tfd_tmp = txq->tfds;

	/* rd_ptr is bounded by n_bd and idx is bounded by n_window */
	int rd_ptr = txq->q.read_ptr;
	int idx = FUNC0(&txq->q, rd_ptr);

	FUNC3(&txq->lock);

	/* We have only q->n_window txq->entries, but we use q->n_bd tfds */
	FUNC2(trans, &txq->entries[idx].meta, &tfd_tmp[rd_ptr]);

	/* free SKB */
	if (txq->entries) {
		struct sk_buff *skb;

		skb = txq->entries[idx].skb;

		/* Can be called from irqs-disabled context
		 * If skb is not NULL, it means that the whole queue is being
		 * freed and that the queue is not empty - free the skb
		 */
		if (skb) {
			FUNC1(trans->op_mode, skb);
			txq->entries[idx].skb = NULL;
		}
	}
}
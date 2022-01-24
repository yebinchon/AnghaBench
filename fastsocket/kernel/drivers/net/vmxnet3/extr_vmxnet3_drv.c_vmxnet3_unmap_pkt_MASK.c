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
typedef  size_t u32 ;
struct TYPE_6__ {size_t next2comp; int /*<<< orphan*/  size; TYPE_1__* base; } ;
struct vmxnet3_tx_queue {TYPE_3__ tx_ring; TYPE_2__* buf_info; } ;
struct vmxnet3_adapter {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {size_t sop_idx; struct sk_buff* skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  txd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct pci_dev*) ; 

__attribute__((used)) static int
FUNC6(u32 eop_idx, struct vmxnet3_tx_queue *tq,
		  struct pci_dev *pdev,	struct vmxnet3_adapter *adapter)
{
	struct sk_buff *skb;
	int entries = 0;

	/* no out of order completion */
	FUNC0(tq->buf_info[eop_idx].sop_idx != tq->tx_ring.next2comp);
	FUNC0(FUNC2(&(tq->tx_ring.base[eop_idx].txd)) != 1);

	skb = tq->buf_info[eop_idx].skb;
	FUNC0(skb == NULL);
	tq->buf_info[eop_idx].skb = NULL;

	FUNC1(eop_idx, tq->tx_ring.size);

	while (tq->tx_ring.next2comp != eop_idx) {
		FUNC5(tq->buf_info + tq->tx_ring.next2comp,
				     pdev);

		/* update next2comp w/o tx_lock. Since we are marking more,
		 * instead of less, tx ring entries avail, the worst case is
		 * that the tx routine incorrectly re-queues a pkt due to
		 * insufficient tx ring entries.
		 */
		FUNC4(&tq->tx_ring);
		entries++;
	}

	FUNC3(skb);
	return entries;
}
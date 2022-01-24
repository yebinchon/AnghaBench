#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct pci_dev {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct myri10ge_tx_buf {int pkt_done; int done; int mask; int req; int /*<<< orphan*/  wake_queue; int /*<<< orphan*/  send_stop; scalar_t__ queue_active; TYPE_4__* info; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct myri10ge_slice_state {TYPE_3__* mgp; int /*<<< orphan*/  dev; TYPE_1__ stats; struct myri10ge_tx_buf tx; } ;
struct TYPE_10__ {scalar_t__ last; struct sk_buff* skb; } ;
struct TYPE_9__ {int ss; TYPE_2__* dev; struct pci_dev* pdev; } ;
struct TYPE_8__ {int real_num_tx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ FUNC0 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 
 int /*<<< orphan*/  bus ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct netdev_queue* FUNC6 (int /*<<< orphan*/ ,struct myri10ge_slice_state*) ; 
 scalar_t__ FUNC7 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC15(struct myri10ge_slice_state *ss, int mcp_index)
{
	struct pci_dev *pdev = ss->mgp->pdev;
	struct myri10ge_tx_buf *tx = &ss->tx;
	struct netdev_queue *dev_queue;
	struct sk_buff *skb;
	int idx, len;

	while (tx->pkt_done != mcp_index) {
		idx = tx->done & tx->mask;
		skb = tx->info[idx].skb;

		/* Mark as free */
		tx->info[idx].skb = NULL;
		if (tx->info[idx].last) {
			tx->pkt_done++;
			tx->info[idx].last = 0;
		}
		tx->done++;
		len = FUNC10(&tx->info[idx], len);
		FUNC11(&tx->info[idx], len, 0);
		if (skb) {
			ss->stats.tx_bytes += skb->len;
			ss->stats.tx_packets++;
			FUNC2(skb);
			if (len)
				FUNC13(pdev,
						 FUNC9(&tx->info[idx],
								bus), len,
						 PCI_DMA_TODEVICE);
		} else {
			if (len)
				FUNC12(pdev,
					       FUNC9(&tx->info[idx],
							      bus), len,
					       PCI_DMA_TODEVICE);
		}
	}

	dev_queue = FUNC6(ss->dev, ss - ss->mgp->ss);
	/*
	 * Make a minimal effort to prevent the NIC from polling an
	 * idle tx queue.  If we can't get the lock we leave the queue
	 * active. In this case, either a thread was about to start
	 * using the queue anyway, or we lost a race and the NIC will
	 * waste some of its resources polling an inactive queue for a
	 * while.
	 */

	if ((ss->mgp->dev->real_num_tx_queues > 1) &&
	    FUNC0(dev_queue)) {
		if (tx->req == tx->done) {
			tx->queue_active = 0;
			FUNC14(FUNC3(1), tx->send_stop);
			FUNC4();
			FUNC5();
		}
		FUNC1(dev_queue);
	}

	/* start the queue if we've stopped it */
	if (FUNC7(dev_queue)
	    && tx->req - tx->done < (tx->mask >> 1)) {
		tx->wake_queue++;
		FUNC8(dev_queue);
	}
}
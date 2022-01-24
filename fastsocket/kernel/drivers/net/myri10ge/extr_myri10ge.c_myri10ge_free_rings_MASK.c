#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct myri10ge_tx_buf {int done; int req; int mask; int /*<<< orphan*/ * req_list; TYPE_4__* req_bytes; TYPE_4__* info; } ;
struct TYPE_11__ {int cnt; int fill_cnt; int mask; TYPE_4__* shadow; TYPE_4__* info; } ;
struct TYPE_10__ {int cnt; int fill_cnt; int mask; TYPE_4__* shadow; TYPE_4__* info; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_dropped; } ;
struct myri10ge_slice_state {struct myri10ge_tx_buf tx; TYPE_3__ rx_small; TYPE_2__ rx_big; TYPE_1__ stats; struct myri10ge_priv* mgp; } ;
struct myri10ge_priv {int /*<<< orphan*/  pdev; scalar_t__ small_bytes; scalar_t__ big_bytes; } ;
struct TYPE_12__ {struct sk_buff* skb; int /*<<< orphan*/  page; void* page_offset; } ;

/* Variables and functions */
 scalar_t__ MXGEFW_PAD ; 
 void* MYRI10GE_ALLOC_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  bus ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct myri10ge_slice_state *ss)
{
	struct myri10ge_priv *mgp = ss->mgp;
	struct sk_buff *skb;
	struct myri10ge_tx_buf *tx;
	int i, len, idx;

	/* If not allocated, skip it */
	if (ss->tx.req_list == NULL)
		return;

	for (i = ss->rx_big.cnt; i < ss->rx_big.fill_cnt; i++) {
		idx = i & ss->rx_big.mask;
		if (i == ss->rx_big.fill_cnt - 1)
			ss->rx_big.info[idx].page_offset = MYRI10GE_ALLOC_SIZE;
		FUNC2(mgp->pdev, &ss->rx_big.info[idx],
				       mgp->big_bytes);
		FUNC8(ss->rx_big.info[idx].page);
	}

	for (i = ss->rx_small.cnt; i < ss->rx_small.fill_cnt; i++) {
		idx = i & ss->rx_small.mask;
		if (i == ss->rx_small.fill_cnt - 1)
			ss->rx_small.info[idx].page_offset =
			    MYRI10GE_ALLOC_SIZE;
		FUNC2(mgp->pdev, &ss->rx_small.info[idx],
				       mgp->small_bytes + MXGEFW_PAD);
		FUNC8(ss->rx_small.info[idx].page);
	}
	tx = &ss->tx;
	while (tx->done != tx->req) {
		idx = tx->done & tx->mask;
		skb = tx->info[idx].skb;

		/* Mark as free */
		tx->info[idx].skb = NULL;
		tx->done++;
		len = FUNC4(&tx->info[idx], len);
		FUNC5(&tx->info[idx], len, 0);
		if (skb) {
			ss->stats.tx_dropped++;
			FUNC0(skb);
			if (len)
				FUNC7(mgp->pdev,
						 FUNC3(&tx->info[idx],
								bus), len,
						 PCI_DMA_TODEVICE);
		} else {
			if (len)
				FUNC6(mgp->pdev,
					       FUNC3(&tx->info[idx],
							      bus), len,
					       PCI_DMA_TODEVICE);
		}
	}
	FUNC1(ss->rx_big.info);

	FUNC1(ss->rx_small.info);

	FUNC1(ss->tx.info);

	FUNC1(ss->rx_big.shadow);

	FUNC1(ss->rx_small.shadow);

	FUNC1(ss->tx.req_bytes);
	ss->tx.req_bytes = NULL;
	ss->tx.req_list = NULL;
}
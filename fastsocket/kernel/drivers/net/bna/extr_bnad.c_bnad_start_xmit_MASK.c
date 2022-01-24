#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct skb_frag_struct {int dummy; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct bnad_tx_unmap {scalar_t__ nvecs; int /*<<< orphan*/ * vectors; struct sk_buff* skb; } ;
struct bnad {TYPE_5__* pcidev; TYPE_1__* tx_info; } ;
struct TYPE_10__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_9__ {scalar_t__ num_vectors; scalar_t__ reserved; } ;
struct TYPE_11__ {TYPE_3__ wi_ext; TYPE_2__ wi; } ;
struct bna_txq_entry {TYPE_6__* vector; TYPE_4__ hdr; } ;
struct bna_tcb {scalar_t__ q_depth; scalar_t__ producer_index; scalar_t__* hw_consumer_index; scalar_t__ consumer_index; int /*<<< orphan*/  flags; scalar_t__ sw_q; int /*<<< orphan*/  i_dbell; struct bnad_tx_unmap* unmap_q; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_14__ {scalar_t__ nr_frags; struct skb_frag_struct* frags; } ;
struct TYPE_13__ {void* length; int /*<<< orphan*/  host_addr; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {struct bna_tcb** tcb; } ;

/* Variables and functions */
 scalar_t__ BFI_TX_MAX_DATA_PER_VECTOR ; 
 scalar_t__ BFI_TX_MAX_VECTORS_PER_PKT ; 
 scalar_t__ BFI_TX_MAX_VECTORS_PER_WI ; 
 int /*<<< orphan*/  BNAD_TXQ_FREE_SENT ; 
 int /*<<< orphan*/  BNAD_TXQ_TX_STARTED ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bna_tcb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BNA_TXQ_WI_EXTENSION ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct bna_tcb*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnad*,struct bnad_tx_unmap*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct bnad*,struct bna_tcb*) ; 
 scalar_t__ FUNC10 (struct bnad*,struct bna_tcb*,struct sk_buff*,struct bna_txq_entry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (int) ; 
 struct bnad* FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  netif_queue_stop ; 
 int /*<<< orphan*/  netif_queue_wakeup ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct skb_frag_struct const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (struct skb_frag_struct const*) ; 
 scalar_t__ FUNC22 (struct sk_buff*) ; 
 TYPE_7__* FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_skb_frag_zero ; 
 int /*<<< orphan*/  tx_skb_headlen_zero ; 
 int /*<<< orphan*/  tx_skb_len_mismatch ; 
 int /*<<< orphan*/  tx_skb_max_vectors ; 
 int /*<<< orphan*/  tx_skb_stopping ; 
 int /*<<< orphan*/  tx_skb_too_short ; 
 scalar_t__ FUNC28 (int) ; 

__attribute__((used)) static netdev_tx_t
FUNC29(struct sk_buff *skb, struct net_device *netdev)
{
	struct bnad *bnad = FUNC17(netdev);
	u32 txq_id = 0;
	struct bna_tcb *tcb = NULL;
	struct bnad_tx_unmap *unmap_q, *unmap, *head_unmap;
	u32		prod, q_depth, vect_id;
	u32		wis, vectors, len;
	int		i;
	dma_addr_t		dma_addr;
	struct bna_txq_entry *txqent;

	len = FUNC22(skb);

	/* Sanity checks for the skb */

	if (FUNC28(skb->len <= ETH_HLEN)) {
		FUNC12(skb);
		FUNC0(bnad, tx_skb_too_short);
		return NETDEV_TX_OK;
	}
	if (FUNC28(len > BFI_TX_MAX_DATA_PER_VECTOR)) {
		FUNC12(skb);
		FUNC0(bnad, tx_skb_headlen_zero);
		return NETDEV_TX_OK;
	}
	if (FUNC28(len == 0)) {
		FUNC12(skb);
		FUNC0(bnad, tx_skb_headlen_zero);
		return NETDEV_TX_OK;
	}

	tcb = bnad->tx_info[0].tcb[txq_id];
	q_depth = tcb->q_depth;
	prod = tcb->producer_index;

	unmap_q = tcb->unmap_q;

	/*
	 * Takes care of the Tx that is scheduled between clearing the flag
	 * and the netif_tx_stop_all_queues() call.
	 */
	if (FUNC28(!FUNC27(BNAD_TXQ_TX_STARTED, &tcb->flags))) {
		FUNC12(skb);
		FUNC0(bnad, tx_skb_stopping);
		return NETDEV_TX_OK;
	}

	vectors = 1 + FUNC23(skb)->nr_frags;
	wis = FUNC4(vectors);	/* 4 vectors per work item */

	if (FUNC28(vectors > BFI_TX_MAX_VECTORS_PER_PKT)) {
		FUNC12(skb);
		FUNC0(bnad, tx_skb_max_vectors);
		return NETDEV_TX_OK;
	}

	/* Check for available TxQ resources */
	if (FUNC28(wis > FUNC1(tcb, q_depth))) {
		if ((*tcb->hw_consumer_index != tcb->consumer_index) &&
		    !FUNC26(BNAD_TXQ_FREE_SENT, &tcb->flags)) {
			u32 sent;
			sent = FUNC9(bnad, tcb);
			if (FUNC16(FUNC27(BNAD_TXQ_TX_STARTED, &tcb->flags)))
				FUNC6(tcb->i_dbell, sent);
			FUNC25();
			FUNC11(BNAD_TXQ_FREE_SENT, &tcb->flags);
		} else {
			FUNC18(netdev);
			FUNC0(bnad, netif_queue_stop);
		}

		FUNC24();
		/*
		 * Check again to deal with race condition between
		 * netif_stop_queue here, and netif_wake_queue in
		 * interrupt handler which is not inside netif tx lock.
		 */
		if (FUNC16(wis > FUNC1(tcb, q_depth))) {
			FUNC0(bnad, netif_queue_stop);
			return NETDEV_TX_BUSY;
		} else {
			FUNC19(netdev);
			FUNC0(bnad, netif_queue_wakeup);
		}
	}

	txqent = &((struct bna_txq_entry *)tcb->sw_q)[prod];
	head_unmap = &unmap_q[prod];

	/* Program the opcode, flags, frame_len, num_vectors in WI */
	if (FUNC10(bnad, tcb, skb, txqent)) {
		FUNC12(skb);
		return NETDEV_TX_OK;
	}
	txqent->hdr.wi.reserved = 0;
	txqent->hdr.wi.num_vectors = vectors;

	head_unmap->skb = skb;
	head_unmap->nvecs = 0;

	/* Program the vectors */
	unmap = head_unmap;
	dma_addr = FUNC13(&bnad->pcidev->dev, skb->data,
				  len, DMA_TO_DEVICE);
	FUNC3(dma_addr, &txqent->vector[0].host_addr);
	txqent->vector[0].length = FUNC15(len);
	FUNC14(&unmap->vectors[0], dma_addr, dma_addr);
	head_unmap->nvecs++;

	for (i = 0, vect_id = 0; i < vectors - 1; i++) {
		const struct skb_frag_struct *frag = &FUNC23(skb)->frags[i];
		u16		size = FUNC21(frag);

		if (FUNC28(size == 0)) {
			/* Undo the changes starting at tcb->producer_index */
			FUNC8(bnad, unmap_q, q_depth,
				tcb->producer_index);
			FUNC12(skb);
			FUNC0(bnad, tx_skb_frag_zero);
			return NETDEV_TX_OK;
		}

		len += size;

		vect_id++;
		if (vect_id == BFI_TX_MAX_VECTORS_PER_WI) {
			vect_id = 0;
			FUNC2(prod, q_depth);
			txqent = &((struct bna_txq_entry *)tcb->sw_q)[prod];
			txqent->hdr.wi_ext.opcode =
				FUNC5(BNA_TXQ_WI_EXTENSION);
			unmap = &unmap_q[prod];
		}

		dma_addr = FUNC20(&bnad->pcidev->dev, frag,
					    0, size, DMA_TO_DEVICE);
		FUNC3(dma_addr, &txqent->vector[vect_id].host_addr);
		txqent->vector[vect_id].length = FUNC15(size);
		FUNC14(&unmap->vectors[vect_id], dma_addr,
						dma_addr);
		head_unmap->nvecs++;
	}

	if (FUNC28(len != skb->len)) {
		/* Undo the changes starting at tcb->producer_index */
		FUNC8(bnad, unmap_q, q_depth, tcb->producer_index);
		FUNC12(skb);
		FUNC0(bnad, tx_skb_len_mismatch);
		return NETDEV_TX_OK;
	}

	FUNC2(prod, q_depth);
	tcb->producer_index = prod;

	FUNC24();

	if (FUNC28(!FUNC27(BNAD_TXQ_TX_STARTED, &tcb->flags)))
		return NETDEV_TX_OK;

	FUNC7(tcb);
	FUNC24();

	return NETDEV_TX_OK;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct txfcb {int dummy; } ;
struct txbd8 {unsigned int lstatus; unsigned int bufPtr; } ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  data; scalar_t__ len; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_3__ stats; int /*<<< orphan*/  trans_start; } ;
struct gfar_private {unsigned int num_txbdfree; size_t skb_curtx; int /*<<< orphan*/  txlock; TYPE_4__* regs; int /*<<< orphan*/  tx_ring_size; struct txbd8* cur_tx; TYPE_2__* ofdev; struct sk_buff** tx_skbuff; scalar_t__ vlgrp; struct txbd8* tx_bd_base; } ;
struct TYPE_10__ {unsigned int nr_frags; TYPE_1__* frags; } ;
struct TYPE_9__ {int /*<<< orphan*/  tstat; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {unsigned int size; int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ GMAC_FCB_LEN ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  TSTAT_CLEAR_THALT ; 
 int TXBD_CRC ; 
 int TXBD_INTERRUPT ; 
 int TXBD_LAST ; 
 int TXBD_READY ; 
 int TXBD_TOE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct txfcb* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct txfcb*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct txfcb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct gfar_private* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 void* FUNC12 (struct txbd8*,struct txbd8*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 struct sk_buff* FUNC15 (struct sk_buff*,scalar_t__) ; 
 TYPE_5__* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC19 (int) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC21(struct sk_buff *skb, struct net_device *dev)
{
	struct gfar_private *priv = FUNC10(dev);
	struct txfcb *fcb = NULL;
	struct txbd8 *txbdp, *txbdp_start, *base;
	u32 lstatus;
	int i;
	u32 bufaddr;
	unsigned long flags;
	unsigned int nr_frags, length;

	base = priv->tx_bd_base;

	/* make space for additional header when fcb is needed */
	if (((skb->ip_summed == CHECKSUM_PARTIAL) ||
			(priv->vlgrp && FUNC20(skb))) &&
			(FUNC14(skb) < GMAC_FCB_LEN)) {
		struct sk_buff *skb_new;

		skb_new = FUNC15(skb, GMAC_FCB_LEN);
		if (!skb_new) {
			dev->stats.tx_errors++;
			FUNC9(skb);
			return NETDEV_TX_OK;
		}
		FUNC9(skb);
		skb = skb_new;
	}

	/* total number of fragments in the SKB */
	nr_frags = FUNC16(skb)->nr_frags;

	FUNC17(&priv->txlock, flags);

	/* check if there is space to queue this packet */
	if ((nr_frags+1) > priv->num_txbdfree) {
		/* no space, stop the queue */
		FUNC11(dev);
		dev->stats.tx_fifo_errors++;
		FUNC18(&priv->txlock, flags);
		return NETDEV_TX_BUSY;
	}

	/* Update transmit stats */
	dev->stats.tx_bytes += skb->len;

	txbdp = txbdp_start = priv->cur_tx;

	if (nr_frags == 0) {
		lstatus = txbdp->lstatus | FUNC0(TXBD_LAST | TXBD_INTERRUPT);
	} else {
		/* Place the fragment addresses and lengths into the TxBDs */
		for (i = 0; i < nr_frags; i++) {
			/* Point at the next BD, wrapping as needed */
			txbdp = FUNC12(txbdp, base, priv->tx_ring_size);

			length = FUNC16(skb)->frags[i].size;

			lstatus = txbdp->lstatus | length |
				FUNC0(TXBD_READY);

			/* Handle the last BD specially */
			if (i == nr_frags - 1)
				lstatus |= FUNC0(TXBD_LAST | TXBD_INTERRUPT);

			bufaddr = FUNC2(&priv->ofdev->dev,
					FUNC16(skb)->frags[i].page,
					FUNC16(skb)->frags[i].page_offset,
					length,
					DMA_TO_DEVICE);

			/* set the TxBD length and buffer pointer */
			txbdp->bufPtr = bufaddr;
			txbdp->lstatus = lstatus;
		}

		lstatus = txbdp_start->lstatus;
	}

	/* Set up checksumming */
	if (CHECKSUM_PARTIAL == skb->ip_summed) {
		fcb = FUNC5(skb);
		lstatus |= FUNC0(TXBD_TOE);
		FUNC6(skb, fcb);
	}

	if (priv->vlgrp && FUNC20(skb)) {
		if (FUNC19(NULL == fcb)) {
			fcb = FUNC5(skb);
			lstatus |= FUNC0(TXBD_TOE);
		}

		FUNC7(skb, fcb);
	}

	/* setup the TxBD length and buffer pointer for the first BD */
	priv->tx_skbuff[priv->skb_curtx] = skb;
	txbdp_start->bufPtr = FUNC3(&priv->ofdev->dev, skb->data,
			FUNC13(skb), DMA_TO_DEVICE);

	lstatus |= FUNC0(TXBD_CRC | TXBD_READY) | FUNC13(skb);

	/*
	 * The powerpc-specific eieio() is used, as wmb() has too strong
	 * semantics (it requires synchronization between cacheable and
	 * uncacheable mappings, which eieio doesn't provide and which we
	 * don't need), thus requiring a more expensive sync instruction.  At
	 * some point, the set of architecture-independent barrier functions
	 * should be expanded to include weaker barriers.
	 */
	FUNC4();

	txbdp_start->lstatus = lstatus;

	/* Update the current skb pointer to the next entry we will use
	 * (wrapping if necessary) */
	priv->skb_curtx = (priv->skb_curtx + 1) &
		FUNC1(priv->tx_ring_size);

	priv->cur_tx = FUNC12(txbdp, base, priv->tx_ring_size);

	/* reduce TxBD free count */
	priv->num_txbdfree -= (nr_frags + 1);

	dev->trans_start = jiffies;

	/* If the next BD still needs to be cleaned up, then the bds
	   are full.  We need to tell the kernel to stop sending us stuff. */
	if (!priv->num_txbdfree) {
		FUNC11(dev);

		dev->stats.tx_fifo_errors++;
	}

	/* Tell the DMA to go go go */
	FUNC8(&priv->regs->tstat, TSTAT_CLEAR_THALT);

	/* Unlock priv */
	FUNC18(&priv->txlock, flags);

	return NETDEV_TX_OK;
}
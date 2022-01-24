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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; int /*<<< orphan*/  protocol; } ;
struct TYPE_3__ {int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_crc_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct korina_private {size_t rx_next_done; struct sk_buff** rx_skb; int /*<<< orphan*/  dma_halt_cnt; TYPE_2__* rx_dma_regs; struct dma_desc* rd_ring; } ;
struct dma_desc {scalar_t__ devcs; int control; void* ca; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmas; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int DMA_DESC_COD ; 
 int DMA_DESC_IOD ; 
 scalar_t__ DMA_STAT_DONE ; 
 scalar_t__ DMA_STAT_ERR ; 
 scalar_t__ DMA_STAT_HALT ; 
 scalar_t__ ETH_RX_CES ; 
 scalar_t__ ETH_RX_CRC ; 
 scalar_t__ ETH_RX_CV ; 
 scalar_t__ ETH_RX_LD ; 
 scalar_t__ ETH_RX_LE ; 
 scalar_t__ ETH_RX_LOR ; 
 scalar_t__ ETH_RX_MP ; 
 scalar_t__ ETH_RX_OVR ; 
 scalar_t__ ETH_RX_ROK ; 
 int KORINA_RBSIZE ; 
 int KORINA_RDS_MASK ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct korina_private*,struct dma_desc*) ; 
 struct sk_buff* FUNC7 (struct net_device*,int) ; 
 struct korina_private* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev, int limit)
{
	struct korina_private *lp = FUNC8(dev);
	struct dma_desc *rd = &lp->rd_ring[lp->rx_next_done];
	struct sk_buff *skb, *skb_new;
	u8 *pkt_buf;
	u32 devcs, pkt_len, dmas;
	int count;

	FUNC3((u32)rd, sizeof(*rd));

	for (count = 0; count < limit; count++) {
		skb = lp->rx_skb[lp->rx_next_done];
		skb_new = NULL;

		devcs = rd->devcs;

		if ((KORINA_RBSIZE - (u32)FUNC1(rd->control)) == 0)
			break;

		/* Update statistics counters */
		if (devcs & ETH_RX_CRC)
			dev->stats.rx_crc_errors++;
		if (devcs & ETH_RX_LOR)
			dev->stats.rx_length_errors++;
		if (devcs & ETH_RX_LE)
			dev->stats.rx_length_errors++;
		if (devcs & ETH_RX_OVR)
			dev->stats.rx_over_errors++;
		if (devcs & ETH_RX_CV)
			dev->stats.rx_frame_errors++;
		if (devcs & ETH_RX_CES)
			dev->stats.rx_length_errors++;
		if (devcs & ETH_RX_MP)
			dev->stats.multicast++;

		if ((devcs & ETH_RX_LD) != ETH_RX_LD) {
			/* check that this is a whole packet
			 * WARNING: DMA_FD bit incorrectly set
			 * in Rc32434 (errata ref #077) */
			dev->stats.rx_errors++;
			dev->stats.rx_dropped++;
		} else if ((devcs & ETH_RX_ROK)) {
			pkt_len = FUNC2(devcs);

			/* must be the (first and) last
			 * descriptor then */
			pkt_buf = (u8 *)lp->rx_skb[lp->rx_next_done]->data;

			/* invalidate the cache */
			FUNC3((unsigned long)pkt_buf, pkt_len - 4);

			/* Malloc up new buffer. */
			skb_new = FUNC7(dev, KORINA_RBSIZE + 2);

			if (!skb_new)
				break;
			/* Do not count the CRC */
			FUNC11(skb, pkt_len - 4);
			skb->protocol = FUNC5(skb, dev);

			/* Pass the packet to upper layers */
			FUNC9(skb);
			dev->stats.rx_packets++;
			dev->stats.rx_bytes += pkt_len;

			/* Update the mcast stats */
			if (devcs & ETH_RX_MP)
				dev->stats.multicast++;

			/* 16 bit align */
			FUNC12(skb_new, 2);

			lp->rx_skb[lp->rx_next_done] = skb_new;
		}

		rd->devcs = 0;

		/* Restore descriptor's curr_addr */
		if (skb_new)
			rd->ca = FUNC0(skb_new->data);
		else
			rd->ca = FUNC0(skb->data);

		rd->control = FUNC1(KORINA_RBSIZE) |
			DMA_DESC_COD | DMA_DESC_IOD;
		lp->rd_ring[(lp->rx_next_done - 1) &
			KORINA_RDS_MASK].control &=
			~DMA_DESC_COD;

		lp->rx_next_done = (lp->rx_next_done + 1) & KORINA_RDS_MASK;
		FUNC4((u32)rd, sizeof(*rd));
		rd = &lp->rd_ring[lp->rx_next_done];
		FUNC13(~DMA_STAT_DONE, &lp->rx_dma_regs->dmas);
	}

	dmas = FUNC10(&lp->rx_dma_regs->dmas);

	if (dmas & DMA_STAT_HALT) {
		FUNC13(~(DMA_STAT_HALT | DMA_STAT_ERR),
				&lp->rx_dma_regs->dmas);

		lp->dma_halt_cnt++;
		rd->devcs = 0;
		skb = lp->rx_skb[lp->rx_next_done];
		rd->ca = FUNC0(skb->data);
		FUNC4((u32)rd, sizeof(*rd));
		FUNC6(lp, rd);
	}

	return count;
}
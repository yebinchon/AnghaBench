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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  ip_summed; struct net_device* dev; int /*<<< orphan*/  tail; int /*<<< orphan*/  protocol; } ;
struct sh_eth_rxdesc {int status; int /*<<< orphan*/  addr; int /*<<< orphan*/  buffer_length; scalar_t__ frame_length; } ;
struct TYPE_4__ {scalar_t__ rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_missed_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_errors; } ;
struct sh_eth_private {int cur_rx; int dirty_rx; int /*<<< orphan*/  rx_buf_sz; struct sk_buff** rx_skbuff; struct sh_eth_rxdesc* rx_ring; TYPE_2__ stats; TYPE_1__* cd; } ;
struct net_device {scalar_t__ base_addr; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw_swap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ EDRRR ; 
 int EDRRR_R ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int RDFEND ; 
 int RD_RACT ; 
 int RD_RDEL ; 
 int RD_RFP ; 
 int RD_RFS1 ; 
 int RD_RFS10 ; 
 int RD_RFS2 ; 
 int RD_RFS3 ; 
 int RD_RFS4 ; 
 int RD_RFS5 ; 
 int RD_RFS6 ; 
 int RX_RING_SIZE ; 
 int FUNC2 (struct sh_eth_private*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sh_eth_private*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct net_device*) ; 
 struct sh_eth_private* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC9(ndev);
	struct sh_eth_rxdesc *rxdesc;

	int entry = mdp->cur_rx % RX_RING_SIZE;
	int boguscnt = (mdp->dirty_rx + RX_RING_SIZE) - mdp->cur_rx;
	struct sk_buff *skb;
	u16 pkt_len = 0;
	u32 desc_status;

	rxdesc = &mdp->rx_ring[entry];
	while (!(rxdesc->status & FUNC2(mdp, RD_RACT))) {
		desc_status = FUNC7(mdp, rxdesc->status);
		pkt_len = rxdesc->frame_length;

		if (--boguscnt < 0)
			break;

		if (!(desc_status & RDFEND))
			mdp->stats.rx_length_errors++;

		if (desc_status & (RD_RFS1 | RD_RFS2 | RD_RFS3 | RD_RFS4 |
				   RD_RFS5 | RD_RFS6 | RD_RFS10)) {
			mdp->stats.rx_errors++;
			if (desc_status & RD_RFS1)
				mdp->stats.rx_crc_errors++;
			if (desc_status & RD_RFS2)
				mdp->stats.rx_frame_errors++;
			if (desc_status & RD_RFS3)
				mdp->stats.rx_length_errors++;
			if (desc_status & RD_RFS4)
				mdp->stats.rx_length_errors++;
			if (desc_status & RD_RFS6)
				mdp->stats.rx_missed_errors++;
			if (desc_status & RD_RFS10)
				mdp->stats.rx_over_errors++;
		} else {
			if (!mdp->cd->hw_swap)
				FUNC13(
					FUNC11(FUNC0(rxdesc->addr, 4)),
					pkt_len + 2);
			skb = mdp->rx_skbuff[entry];
			mdp->rx_skbuff[entry] = NULL;
			FUNC14(skb, pkt_len);
			skb->protocol = FUNC8(skb, ndev);
			FUNC10(skb);
			mdp->stats.rx_packets++;
			mdp->stats.rx_bytes += pkt_len;
		}
		rxdesc->status |= FUNC2(mdp, RD_RACT);
		entry = (++mdp->cur_rx) % RX_RING_SIZE;
		rxdesc = &mdp->rx_ring[entry];
	}

	/* Refill the Rx ring buffers. */
	for (; mdp->cur_rx - mdp->dirty_rx > 0; mdp->dirty_rx++) {
		entry = mdp->dirty_rx % RX_RING_SIZE;
		rxdesc = &mdp->rx_ring[entry];
		/* The size of the buffer is 16 byte boundary. */
		rxdesc->buffer_length = FUNC0(mdp->rx_buf_sz, 16);

		if (mdp->rx_skbuff[entry] == NULL) {
			skb = FUNC5(mdp->rx_buf_sz);
			mdp->rx_skbuff[entry] = skb;
			if (skb == NULL)
				break;	/* Better luck next round. */
			FUNC6(&ndev->dev, skb->tail, mdp->rx_buf_sz,
					DMA_FROM_DEVICE);
			skb->dev = ndev;
			FUNC12(skb);

			skb->ip_summed = CHECKSUM_NONE;
			rxdesc->addr = FUNC15(FUNC1(skb->data, 4));
		}
		if (entry >= RX_RING_SIZE - 1)
			rxdesc->status |=
				FUNC2(mdp, RD_RACT | RD_RFP | RD_RDEL);
		else
			rxdesc->status |=
				FUNC2(mdp, RD_RACT | RD_RFP);
	}

	/* Restart Rx engine if stopped. */
	/* If we don't need to check status, don't. -KDU */
	if (!(FUNC3(ndev->base_addr + EDRRR) & EDRRR_R))
		FUNC4(EDRRR_R, ndev->base_addr + EDRRR);

	return 0;
}
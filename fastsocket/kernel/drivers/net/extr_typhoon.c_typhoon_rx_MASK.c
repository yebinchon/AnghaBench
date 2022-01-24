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
typedef  scalar_t__ u32 ;
struct typhoon {int /*<<< orphan*/  state_lock; int /*<<< orphan*/ * vlgrp; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; struct rxbuff_ent* rxbuffers; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; int /*<<< orphan*/  data; } ;
struct rxbuff_ent {int /*<<< orphan*/  dma_addr; struct sk_buff* skb; } ;
struct rx_desc {scalar_t__ addr; int flags; int rxStatus; int /*<<< orphan*/  vlanTag; int /*<<< orphan*/  frameLen; } ;
struct basic_ring {scalar_t__ ringBase; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PKT_BUF_SZ ; 
 int TYPHOON_RX_ERROR ; 
 int TYPHOON_RX_IP_CHK_GOOD ; 
 int TYPHOON_RX_TCP_CHK_GOOD ; 
 int TYPHOON_RX_UDP_CHK_GOOD ; 
 int TYPHOON_RX_VLAN ; 
 int FUNC0 (scalar_t__) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int volatile) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int rx_copybreak ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct typhoon*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct typhoon*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC19(struct typhoon *tp, struct basic_ring *rxRing, volatile __le32 * ready,
	   volatile __le32 * cleared, int budget)
{
	struct rx_desc *rx;
	struct sk_buff *skb, *new_skb;
	struct rxbuff_ent *rxb;
	dma_addr_t dma_addr;
	u32 local_ready;
	u32 rxaddr;
	int pkt_len;
	u32 idx;
	__le32 csum_bits;
	int received;

	received = 0;
	local_ready = FUNC4(*ready);
	rxaddr = FUNC4(*cleared);
	while(rxaddr != local_ready && budget > 0) {
		rx = (struct rx_desc *) (rxRing->ringBase + rxaddr);
		idx = rx->addr;
		rxb = &tp->rxbuffers[idx];
		skb = rxb->skb;
		dma_addr = rxb->dma_addr;

		FUNC16(&rxaddr, 1);

		if(rx->flags & TYPHOON_RX_ERROR) {
			FUNC17(tp, idx);
			continue;
		}

		pkt_len = FUNC3(rx->frameLen);

		if(pkt_len < rx_copybreak &&
		   (new_skb = FUNC1(pkt_len + 2)) != NULL) {
			FUNC12(new_skb, 2);
			FUNC7(tp->pdev, dma_addr,
						    PKT_BUF_SZ,
						    PCI_DMA_FROMDEVICE);
			FUNC10(new_skb, skb->data, pkt_len);
			FUNC8(tp->pdev, dma_addr,
						       PKT_BUF_SZ,
						       PCI_DMA_FROMDEVICE);
			FUNC11(new_skb, pkt_len);
			FUNC17(tp, idx);
		} else {
			new_skb = skb;
			FUNC11(new_skb, pkt_len);
			FUNC9(tp->pdev, dma_addr, PKT_BUF_SZ,
				       PCI_DMA_FROMDEVICE);
			FUNC15(tp, idx);
		}
		new_skb->protocol = FUNC2(new_skb, tp->dev);
		csum_bits = rx->rxStatus & (TYPHOON_RX_IP_CHK_GOOD |
			TYPHOON_RX_UDP_CHK_GOOD | TYPHOON_RX_TCP_CHK_GOOD);
		if(csum_bits ==
		   (TYPHOON_RX_IP_CHK_GOOD | TYPHOON_RX_TCP_CHK_GOOD)
		   || csum_bits ==
		   (TYPHOON_RX_IP_CHK_GOOD | TYPHOON_RX_UDP_CHK_GOOD)) {
			new_skb->ip_summed = CHECKSUM_UNNECESSARY;
		} else
			new_skb->ip_summed = CHECKSUM_NONE;

		FUNC13(&tp->state_lock);
		if(tp->vlgrp != NULL && rx->rxStatus & TYPHOON_RX_VLAN)
			FUNC18(new_skb, tp->vlgrp,
						 FUNC6(rx->vlanTag) & 0xffff);
		else
			FUNC5(new_skb);
		FUNC14(&tp->state_lock);

		received++;
		budget--;
	}
	*cleared = FUNC0(rxaddr);

	return received;
}
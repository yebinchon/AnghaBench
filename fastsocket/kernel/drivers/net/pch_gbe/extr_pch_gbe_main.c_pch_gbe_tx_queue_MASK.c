#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; scalar_t__ protocol; int* data; void* csum; } ;
struct pch_gbe_tx_ring {unsigned int next_to_use; unsigned int count; scalar_t__ dma; struct pch_gbe_buffer* buffer_info; } ;
struct pch_gbe_tx_desc {size_t length; size_t tx_words_eob; unsigned int tx_frame_ctrl; int /*<<< orphan*/  gbec_status; scalar_t__ buffer_addr; } ;
struct pch_gbe_hw {TYPE_2__* reg; } ;
struct pch_gbe_buffer {size_t length; int mapped; scalar_t__ dma; scalar_t__ time_stamp; struct sk_buff* skb; } ;
struct pch_gbe_adapter {TYPE_1__* pdev; struct pch_gbe_hw hw; } ;
struct iphdr {scalar_t__ protocol; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  ihl; scalar_t__ check; } ;
struct TYPE_8__ {void* check; } ;
struct TYPE_7__ {void* check; } ;
struct TYPE_6__ {int /*<<< orphan*/  TX_DSC_SW_P; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  DSC_INIT16 ; 
 size_t ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ PCH_GBE_SHORT_PKT ; 
 unsigned int PCH_GBE_TXD_CTRL_APAD ; 
 unsigned int PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF ; 
 struct pch_gbe_tx_desc* FUNC0 (struct pch_gbe_tx_ring,unsigned int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC8 (struct sk_buff*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 void* FUNC11 (struct sk_buff*,unsigned int,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct sk_buff*) ; 
 TYPE_4__* FUNC13 (struct sk_buff*) ; 
 TYPE_3__* FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static void FUNC16(struct pch_gbe_adapter *adapter,
			      struct pch_gbe_tx_ring *tx_ring,
			      struct sk_buff *skb)
{
	struct pch_gbe_hw *hw = &adapter->hw;
	struct pch_gbe_tx_desc *tx_desc;
	struct pch_gbe_buffer *buffer_info;
	struct sk_buff *tmp_skb;
	unsigned int frame_ctrl;
	unsigned int ring_num;

	/*-- Set frame control --*/
	frame_ctrl = 0;
	if (FUNC15(skb->len < PCH_GBE_SHORT_PKT))
		frame_ctrl |= PCH_GBE_TXD_CTRL_APAD;
	if (skb->ip_summed == CHECKSUM_NONE)
		frame_ctrl |= PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF;

	/* Performs checksum processing */
	/*
	 * It is because the hardware accelerator does not support a checksum,
	 * when the received data size is less than 64 bytes.
	 */
	if (skb->len < PCH_GBE_SHORT_PKT && skb->ip_summed != CHECKSUM_NONE) {
		frame_ctrl |= PCH_GBE_TXD_CTRL_APAD |
			      PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF;
		if (skb->protocol == FUNC5(ETH_P_IP)) {
			struct iphdr *iph = FUNC8(skb);
			unsigned int offset;
			iph->check = 0;
			iph->check = FUNC7((u8 *) iph, iph->ihl);
			offset = FUNC12(skb);
			if (iph->protocol == IPPROTO_TCP) {
				skb->csum = 0;
				FUNC13(skb)->check = 0;
				skb->csum = FUNC11(skb, offset,
							 skb->len - offset, 0);
				FUNC13(skb)->check =
					FUNC1(iph->saddr,
							  iph->daddr,
							  skb->len - offset,
							  IPPROTO_TCP,
							  skb->csum);
			} else if (iph->protocol == IPPROTO_UDP) {
				skb->csum = 0;
				FUNC14(skb)->check = 0;
				skb->csum =
					FUNC11(skb, offset,
						     skb->len - offset, 0);
				FUNC14(skb)->check =
					FUNC1(iph->saddr,
							  iph->daddr,
							  skb->len - offset,
							  IPPROTO_UDP,
							  skb->csum);
			}
		}
	}

	ring_num = tx_ring->next_to_use;
	if (FUNC15((ring_num + 1) == tx_ring->count))
		tx_ring->next_to_use = 0;
	else
		tx_ring->next_to_use = ring_num + 1;


	buffer_info = &tx_ring->buffer_info[ring_num];
	tmp_skb = buffer_info->skb;

	/* [Header:14][payload] ---> [Header:14][paddong:2][payload]    */
	FUNC9(tmp_skb->data, skb->data, ETH_HLEN);
	tmp_skb->data[ETH_HLEN] = 0x00;
	tmp_skb->data[ETH_HLEN + 1] = 0x00;
	tmp_skb->len = skb->len;
	FUNC9(&tmp_skb->data[ETH_HLEN + 2], &skb->data[ETH_HLEN],
	       (skb->len - ETH_HLEN));
	/*-- Set Buffer information --*/
	buffer_info->length = tmp_skb->len;
	buffer_info->dma = FUNC3(&adapter->pdev->dev, tmp_skb->data,
					  buffer_info->length,
					  DMA_TO_DEVICE);
	if (FUNC4(&adapter->pdev->dev, buffer_info->dma)) {
		FUNC10("TX DMA map failed\n");
		buffer_info->dma = 0;
		buffer_info->time_stamp = 0;
		tx_ring->next_to_use = ring_num;
		return;
	}
	buffer_info->mapped = true;
	buffer_info->time_stamp = jiffies;

	/*-- Set Tx descriptor --*/
	tx_desc = FUNC0(*tx_ring, ring_num);
	tx_desc->buffer_addr = (buffer_info->dma);
	tx_desc->length = (tmp_skb->len);
	tx_desc->tx_words_eob = ((tmp_skb->len + 3));
	tx_desc->tx_frame_ctrl = (frame_ctrl);
	tx_desc->gbec_status = (DSC_INIT16);

	if (FUNC15(++ring_num == tx_ring->count))
		ring_num = 0;

	/* Update software pointer of TX descriptor */
	FUNC6(tx_ring->dma +
		  (int)sizeof(struct pch_gbe_tx_desc) * ring_num,
		  &hw->reg->TX_DSC_SW_P);
	FUNC2(skb);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ status_error; int /*<<< orphan*/  length; } ;
struct TYPE_8__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ len; struct sk_buff* next; union ixgbe_adv_rx_desc* data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ixgbevf_rx_buffer {struct sk_buff* skb; scalar_t__ dma; } ;
struct ixgbevf_ring {unsigned int next_to_clean; unsigned int count; unsigned int total_packets; unsigned int total_bytes; struct ixgbevf_rx_buffer* rx_buffer_info; int /*<<< orphan*/  netdev; int /*<<< orphan*/  rx_buf_len; } ;
struct TYPE_11__ {unsigned int total_packets; unsigned int total_bytes; } ;
struct ixgbevf_q_vector {TYPE_5__ rx; struct ixgbevf_adapter* adapter; } ;
struct ixgbevf_adapter {TYPE_4__* netdev; int /*<<< orphan*/  non_eop_descs; struct pci_dev* pdev; } ;
struct TYPE_12__ {struct sk_buff* prev; } ;
struct TYPE_9__ {unsigned int rx_bytes; unsigned int rx_packets; } ;
struct TYPE_10__ {TYPE_3__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int IXGBEVF_RX_BUFFER_WRITE ; 
 union ixgbe_adv_rx_desc* FUNC0 (struct ixgbevf_ring*,unsigned int) ; 
 TYPE_6__* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct ixgbevf_ring*) ; 
 int IXGBE_RXDADV_ERR_FRAME_ERR_MASK ; 
 int IXGBE_RXD_STAT_DD ; 
 int IXGBE_RXD_STAT_EOP ; 
 int IXGBE_RXD_STAT_LB ; 
 union ixgbe_adv_rx_desc* NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbevf_adapter*,struct ixgbevf_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbevf_q_vector*,struct sk_buff*,int,union ixgbe_adv_rx_desc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbevf_adapter*,struct ixgbevf_ring*,int,struct sk_buff*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (union ixgbe_adv_rx_desc*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static bool FUNC18(struct ixgbevf_q_vector *q_vector,
				 struct ixgbevf_ring *rx_ring,
				 int budget)
{
	struct ixgbevf_adapter *adapter = q_vector->adapter;
	struct pci_dev *pdev = adapter->pdev;
	union ixgbe_adv_rx_desc *rx_desc, *next_rxd;
	struct ixgbevf_rx_buffer *rx_buffer_info, *next_buffer;
	struct sk_buff *skb;
	unsigned int i;
	u32 len, staterr;
	int cleaned_count = 0;
	unsigned int total_rx_bytes = 0, total_rx_packets = 0;

	i = rx_ring->next_to_clean;
	rx_desc = FUNC0(rx_ring, i);
	staterr = FUNC11(rx_desc->wb.upper.status_error);
	rx_buffer_info = &rx_ring->rx_buffer_info[i];

	while (staterr & IXGBE_RXD_STAT_DD) {
		if (!budget)
			break;
		budget--;

		FUNC13(); /* read descriptor and rx_buffer_info after status DD */
		len = FUNC10(rx_desc->wb.upper.length);
		skb = rx_buffer_info->skb;
		FUNC12(skb->data - NET_IP_ALIGN);
		rx_buffer_info->skb = NULL;

		if (rx_buffer_info->dma) {
			FUNC5(&pdev->dev, rx_buffer_info->dma,
					 rx_ring->rx_buf_len,
					 DMA_FROM_DEVICE);
			rx_buffer_info->dma = 0;
			FUNC16(skb, len);
		}

		i++;
		if (i == rx_ring->count)
			i = 0;

		next_rxd = FUNC0(rx_ring, i);
		FUNC12(next_rxd);
		cleaned_count++;

		next_buffer = &rx_ring->rx_buffer_info[i];

		if (!(staterr & IXGBE_RXD_STAT_EOP)) {
			skb->next = next_buffer->skb;
			FUNC1(skb->next)->prev = skb;
			adapter->non_eop_descs++;
			goto next_desc;
		}

		/* we should not be chaining buffers, if we did drop the skb */
		if (FUNC1(skb)->prev) {
			do {
				struct sk_buff *this = skb;
				skb = FUNC1(skb)->prev;
				FUNC3(this);
			} while (skb);
			goto next_desc;
		}

		/* ERR_MASK will only have valid bits if EOP set */
		if (FUNC17(staterr & IXGBE_RXDADV_ERR_FRAME_ERR_MASK)) {
			FUNC4(skb);
			goto next_desc;
		}

		FUNC9(adapter, rx_ring, staterr, skb);

		/* probably a little skewed due to removing CRC */
		total_rx_bytes += skb->len;
		total_rx_packets++;

		/*
		 * Work around issue of some types of VM to VM loop back
		 * packets not getting split correctly
		 */
		if (staterr & IXGBE_RXD_STAT_LB) {
			u32 header_fixup_len = FUNC14(skb);
			if (header_fixup_len < 14)
				FUNC15(skb, header_fixup_len);
		}
		skb->protocol = FUNC6(skb, rx_ring->netdev);

		FUNC8(q_vector, skb, staterr, rx_desc);

next_desc:
		rx_desc->wb.upper.status_error = 0;

		/* return some buffers to hardware, one at a time is too slow */
		if (cleaned_count >= IXGBEVF_RX_BUFFER_WRITE) {
			FUNC7(adapter, rx_ring,
						 cleaned_count);
			cleaned_count = 0;
		}

		/* use prefetched values */
		rx_desc = next_rxd;
		rx_buffer_info = &rx_ring->rx_buffer_info[i];

		staterr = FUNC11(rx_desc->wb.upper.status_error);
	}

	rx_ring->next_to_clean = i;
	cleaned_count = FUNC2(rx_ring);

	if (cleaned_count)
		FUNC7(adapter, rx_ring, cleaned_count);

	rx_ring->total_packets += total_rx_packets;
	rx_ring->total_bytes += total_rx_bytes;
	adapter->netdev->stats.rx_bytes += total_rx_bytes;
	adapter->netdev->stats.rx_packets += total_rx_packets;
	q_vector->rx.total_packets += total_rx_packets;
	q_vector->rx.total_bytes += total_rx_bytes;

	return !!budget;
}
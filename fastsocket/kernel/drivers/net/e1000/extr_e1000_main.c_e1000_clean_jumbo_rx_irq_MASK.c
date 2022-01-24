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
typedef  int u8 ;
typedef  int u32 ;
struct sk_buff {int* data; scalar_t__ len; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {unsigned int rx_bytes; unsigned int rx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct e1000_rx_ring {unsigned int next_to_clean; unsigned int count; struct sk_buff* rx_skb_top; struct e1000_buffer* buffer_info; } ;
struct e1000_rx_desc {int status; int errors; int /*<<< orphan*/  special; int /*<<< orphan*/  csum; int /*<<< orphan*/  length; } ;
struct e1000_hw {int dummy; } ;
struct e1000_buffer {int /*<<< orphan*/  page; struct sk_buff* skb; scalar_t__ dma; int /*<<< orphan*/  length; } ;
struct e1000_adapter {unsigned int total_rx_packets; unsigned int total_rx_bytes; int /*<<< orphan*/  (* alloc_rx_buf ) (struct e1000_adapter*,struct e1000_rx_ring*,int) ;int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  stats; struct pci_dev* pdev; struct net_device* netdev; struct e1000_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int FUNC0 (struct e1000_rx_ring*) ; 
 int E1000_RXD_ERR_FRAME_ERR_MASK ; 
 int E1000_RXD_STAT_DD ; 
 int E1000_RXD_STAT_EOP ; 
 int E1000_RX_BUFFER_WRITE ; 
 struct e1000_rx_desc* FUNC1 (struct e1000_rx_ring,unsigned int) ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  KM_SKB_DATA_SOFTIRQ ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int,int,int,int) ; 
 int copybreak ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_buffer*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_adapter*,int,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_adapter*,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct e1000_rx_desc*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 struct sk_buff* rxtop ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 TYPE_2__* FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC25 (struct e1000_adapter*,struct e1000_rx_ring*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct e1000_adapter*,struct e1000_rx_ring*,int) ; 
 scalar_t__ FUNC27 (int) ; 

__attribute__((used)) static bool FUNC28(struct e1000_adapter *adapter,
				     struct e1000_rx_ring *rx_ring,
				     int *work_done, int work_to_do)
{
	struct e1000_hw *hw = &adapter->hw;
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;
	struct e1000_rx_desc *rx_desc, *next_rxd;
	struct e1000_buffer *buffer_info, *next_buffer;
	unsigned long irq_flags;
	u32 length;
	unsigned int i;
	int cleaned_count = 0;
	bool cleaned = false;
	unsigned int total_rx_bytes=0, total_rx_packets=0;

	i = rx_ring->next_to_clean;
	rx_desc = FUNC1(*rx_ring, i);
	buffer_info = &rx_ring->buffer_info[i];

	while (rx_desc->status & E1000_RXD_STAT_DD) {
		struct sk_buff *skb;
		u8 status;

		if (*work_done >= work_to_do)
			break;
		(*work_done)++;
		FUNC17(); /* read descriptor and rx_buffer_info after status DD */

		status = rx_desc->status;
		skb = buffer_info->skb;
		buffer_info->skb = NULL;

		if (++i == rx_ring->count) i = 0;
		next_rxd = FUNC1(*rx_ring, i);
		FUNC14(next_rxd);

		next_buffer = &rx_ring->buffer_info[i];

		cleaned = true;
		cleaned_count++;
		FUNC4(&pdev->dev, buffer_info->dma,
			       buffer_info->length, DMA_FROM_DEVICE);
		buffer_info->dma = 0;

		length = FUNC12(rx_desc->length);

		/* errors is only valid for DD + EOP descriptors */
		if (FUNC27((status & E1000_RXD_STAT_EOP) &&
		    (rx_desc->errors & E1000_RXD_ERR_FRAME_ERR_MASK))) {
			u8 last_byte = *(skb->data + length - 1);
			if (FUNC2(hw, status, rx_desc->errors, length,
				       last_byte)) {
				FUNC23(&adapter->stats_lock,
				                  irq_flags);
				FUNC8(hw, &adapter->stats,
				                       length, skb->data);
				FUNC24(&adapter->stats_lock,
				                       irq_flags);
				length--;
			} else {
				/* recycle both page and skb */
				buffer_info->skb = skb;
				/* an error means any chain goes out the window
				 * too */
				if (rx_ring->rx_skb_top)
					FUNC3(rx_ring->rx_skb_top);
				rx_ring->rx_skb_top = NULL;
				goto next_desc;
			}
		}

#define rxtop rx_ring->rx_skb_top
		if (!(status & E1000_RXD_STAT_EOP)) {
			/* this descriptor is only the beginning (or middle) */
			if (!rxtop) {
				/* this is the beginning of a chain */
				rxtop = skb;
				FUNC18(rxtop, 0, buffer_info->page,
				                   0, length);
			} else {
				/* this is the middle of a chain */
				FUNC18(rxtop,
				    FUNC20(rxtop)->nr_frags,
				    buffer_info->page, 0, length);
				/* re-use the skb, only consumed the page */
				buffer_info->skb = skb;
			}
			FUNC5(buffer_info, rxtop, length);
			goto next_desc;
		} else {
			if (rxtop) {
				/* end of the chain */
				FUNC18(rxtop,
				    FUNC20(rxtop)->nr_frags,
				    buffer_info->page, 0, length);
				/* re-use the current skb, we only consumed the
				 * page */
				buffer_info->skb = skb;
				skb = rxtop;
				rxtop = NULL;
				FUNC5(buffer_info, skb, length);
			} else {
				/* no chain, got EOP, this buf is the packet
				 * copybreak to save the put_page/alloc_page */
				if (length <= copybreak &&
				    FUNC22(skb) >= length) {
					u8 *vaddr;
					vaddr = FUNC10(buffer_info->page,
					                    KM_SKB_DATA_SOFTIRQ);
					FUNC13(FUNC21(skb), vaddr, length);
					FUNC11(vaddr,
					              KM_SKB_DATA_SOFTIRQ);
					/* re-use the page, so don't erase
					 * buffer_info->page */
					FUNC19(skb, length);
				} else {
					FUNC18(skb, 0,
					                   buffer_info->page, 0,
				                           length);
					FUNC5(buffer_info, skb,
					                   length);
				}
			}
		}

		/* Receive Checksum Offload XXX recompute due to CRC strip? */
		FUNC7(adapter,
		                  (u32)(status) |
		                  ((u32)(rx_desc->errors) << 24),
		                  FUNC12(rx_desc->csum), skb);

		FUNC16(skb, skb->len - 4);

		/* probably a little skewed due to removing CRC */
		total_rx_bytes += skb->len;
		total_rx_packets++;

		/* eth type trans needs skb->data to point to something */
		if (!FUNC15(skb, ETH_HLEN)) {
			FUNC9(drv, "pskb_may_pull failed.\n");
			FUNC3(skb);
			goto next_desc;
		}

		FUNC6(adapter, status, rx_desc->special, skb);

next_desc:
		rx_desc->status = 0;

		/* return some buffers to hardware, one at a time is too slow */
		if (FUNC27(cleaned_count >= E1000_RX_BUFFER_WRITE)) {
			adapter->alloc_rx_buf(adapter, rx_ring, cleaned_count);
			cleaned_count = 0;
		}

		/* use prefetched values */
		rx_desc = next_rxd;
		buffer_info = next_buffer;
	}
	rx_ring->next_to_clean = i;

	cleaned_count = FUNC0(rx_ring);
	if (cleaned_count)
		adapter->alloc_rx_buf(adapter, rx_ring, cleaned_count);

	adapter->total_rx_packets += total_rx_packets;
	adapter->total_rx_bytes += total_rx_bytes;
	netdev->stats.rx_bytes += total_rx_bytes;
	netdev->stats.rx_packets += total_rx_packets;
	return cleaned;
}
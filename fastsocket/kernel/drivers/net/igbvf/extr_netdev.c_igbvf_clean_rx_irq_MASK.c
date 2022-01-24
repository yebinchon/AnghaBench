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
struct TYPE_11__ {scalar_t__ status_error; int /*<<< orphan*/  vlan; int /*<<< orphan*/  length; } ;
struct TYPE_8__ {int /*<<< orphan*/  hdr_info; } ;
struct TYPE_9__ {TYPE_1__ hs_rss; } ;
struct TYPE_10__ {TYPE_2__ lo_dword; } ;
struct TYPE_12__ {TYPE_4__ upper; TYPE_3__ lower; } ;
union e1000_adv_rx_desc {TYPE_5__ wb; } ;
typedef  int u32 ;
struct sk_buff {int data_len; int truesize; int /*<<< orphan*/  protocol; scalar_t__ len; union e1000_adv_rx_desc* data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct igbvf_ring {unsigned int next_to_clean; unsigned int count; struct igbvf_buffer* buffer_info; } ;
struct igbvf_buffer {scalar_t__ dma; struct sk_buff* skb; int /*<<< orphan*/ * page; int /*<<< orphan*/  page_offset; scalar_t__ page_dma; } ;
struct TYPE_13__ {unsigned int rx_bytes; unsigned int rx_packets; } ;
struct igbvf_adapter {int rx_ps_hdr_size; int rx_buffer_len; unsigned int total_rx_packets; unsigned int total_rx_bytes; TYPE_6__ net_stats; struct pci_dev* pdev; struct net_device* netdev; struct igbvf_ring* rx_ring; } ;
struct TYPE_14__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int E1000_RXDADV_HDRBUFLEN_MASK ; 
 int E1000_RXDADV_HDRBUFLEN_SHIFT ; 
 int E1000_RXDEXT_ERR_FRAME_ERR_MASK ; 
 int E1000_RXD_STAT_DD ; 
 int E1000_RXD_STAT_EOP ; 
 int IGBVF_RX_BUFFER_WRITE ; 
 union e1000_adv_rx_desc* FUNC0 (struct igbvf_ring,unsigned int) ; 
 union e1000_adv_rx_desc* NET_IP_ALIGN ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct igbvf_ring*,int) ; 
 int FUNC7 (struct igbvf_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct igbvf_adapter*,struct net_device*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct igbvf_adapter*,int,struct sk_buff*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (union e1000_adv_rx_desc*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 TYPE_7__* FUNC17 (struct sk_buff*) ; 

__attribute__((used)) static bool FUNC18(struct igbvf_adapter *adapter,
                               int *work_done, int work_to_do)
{
	struct igbvf_ring *rx_ring = adapter->rx_ring;
	struct net_device *netdev = adapter->netdev;
	struct pci_dev *pdev = adapter->pdev;
	union e1000_adv_rx_desc *rx_desc, *next_rxd;
	struct igbvf_buffer *buffer_info, *next_buffer;
	struct sk_buff *skb;
	bool cleaned = false;
	int cleaned_count = 0;
	unsigned int total_bytes = 0, total_packets = 0;
	unsigned int i;
	u32 length, hlen, staterr;

	i = rx_ring->next_to_clean;
	rx_desc = FUNC0(*rx_ring, i);
	staterr = FUNC11(rx_desc->wb.upper.status_error);

	while (staterr & E1000_RXD_STAT_DD) {
		if (*work_done >= work_to_do)
			break;
		(*work_done)++;
		FUNC14(); /* read descriptor and rx_buffer_info after status DD */

		buffer_info = &rx_ring->buffer_info[i];

		/* HW will not DMA in data larger than the given buffer, even
		 * if it parses the (NFS, of course) header to be larger.  In
		 * that case, it fills the header buffer and spills the rest
		 * into the page.
		 */
		hlen = (FUNC10(rx_desc->wb.lower.lo_dword.hs_rss.hdr_info) &
		  E1000_RXDADV_HDRBUFLEN_MASK) >> E1000_RXDADV_HDRBUFLEN_SHIFT;
		if (hlen > adapter->rx_ps_hdr_size)
			hlen = adapter->rx_ps_hdr_size;

		length = FUNC10(rx_desc->wb.upper.length);
		cleaned = true;
		cleaned_count++;

		skb = buffer_info->skb;
		FUNC13(skb->data - NET_IP_ALIGN);
		buffer_info->skb = NULL;
		if (!adapter->rx_ps_hdr_size) {
			FUNC3(&pdev->dev, buffer_info->dma,
			                 adapter->rx_buffer_len,
					 DMA_FROM_DEVICE);
			buffer_info->dma = 0;
			FUNC16(skb, length);
			goto send_up;
		}

		if (!FUNC17(skb)->nr_frags) {
			FUNC3(&pdev->dev, buffer_info->dma,
			                 adapter->rx_ps_hdr_size,
					 DMA_FROM_DEVICE);
			FUNC16(skb, hlen);
		}

		if (length) {
			FUNC2(&pdev->dev, buffer_info->page_dma,
			               PAGE_SIZE / 2,
				       DMA_FROM_DEVICE);
			buffer_info->page_dma = 0;

			FUNC15(skb, FUNC17(skb)->nr_frags,
			                   buffer_info->page,
			                   buffer_info->page_offset,
			                   length);

			if ((adapter->rx_buffer_len > (PAGE_SIZE / 2)) ||
			    (FUNC12(buffer_info->page) != 1))
				buffer_info->page = NULL;
			else
				FUNC5(buffer_info->page);

			skb->len += length;
			skb->data_len += length;
			skb->truesize += PAGE_SIZE / 2;
		}
send_up:
		i++;
		if (i == rx_ring->count)
			i = 0;
		next_rxd = FUNC0(*rx_ring, i);
		FUNC13(next_rxd);
		next_buffer = &rx_ring->buffer_info[i];

		if (!(staterr & E1000_RXD_STAT_EOP)) {
			buffer_info->skb = next_buffer->skb;
			buffer_info->dma = next_buffer->dma;
			next_buffer->skb = skb;
			next_buffer->dma = 0;
			goto next_desc;
		}

		if (staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) {
			FUNC1(skb);
			goto next_desc;
		}

		total_bytes += skb->len;
		total_packets++;

		FUNC9(adapter, staterr, skb);

		skb->protocol = FUNC4(skb, netdev);

		FUNC8(adapter, netdev, skb, staterr,
		                  rx_desc->wb.upper.vlan);

next_desc:
		rx_desc->wb.upper.status_error = 0;

		/* return some buffers to hardware, one at a time is too slow */
		if (cleaned_count >= IGBVF_RX_BUFFER_WRITE) {
			FUNC6(rx_ring, cleaned_count);
			cleaned_count = 0;
		}

		/* use prefetched values */
		rx_desc = next_rxd;
		buffer_info = next_buffer;

		staterr = FUNC11(rx_desc->wb.upper.status_error);
	}

	rx_ring->next_to_clean = i;
	cleaned_count = FUNC7(rx_ring);

	if (cleaned_count)
		FUNC6(rx_ring, cleaned_count);

	adapter->total_rx_packets += total_packets;
	adapter->total_rx_bytes += total_bytes;
	adapter->net_stats.rx_bytes += total_bytes;
	adapter->net_stats.rx_packets += total_packets;
	return cleaned;
}
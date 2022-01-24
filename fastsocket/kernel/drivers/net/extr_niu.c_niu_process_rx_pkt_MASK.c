#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u64 ;
typedef  size_t u32 ;
struct sk_buff {int len; int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; } ;
struct rx_ring_info {unsigned int rcr_index; size_t* rbr_sizes; size_t rbr_block_size; int rx_bytes; int /*<<< orphan*/  rx_channel; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rbr_refill_pending; int /*<<< orphan*/ * rcr; } ;
struct page {size_t index; int /*<<< orphan*/ * mapping; } ;
struct niu {int /*<<< orphan*/  dev; int /*<<< orphan*/  device; TYPE_1__* ops; } ;
struct napi_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmap_page ) (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  NET_IP_ALIGN ; 
 unsigned int FUNC0 (struct rx_ring_info*,unsigned int) ; 
 size_t PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t RCR_ENTRY_ERROR ; 
 size_t RCR_ENTRY_L2_LEN ; 
 size_t RCR_ENTRY_L2_LEN_SHIFT ; 
 size_t RCR_ENTRY_MULTI ; 
 size_t RCR_ENTRY_NOPORT ; 
 size_t RCR_ENTRY_PKTBUFSZ ; 
 size_t RCR_ENTRY_PKTBUFSZ_SHIFT ; 
 size_t RCR_ENTRY_PKT_BUF_ADDR ; 
 size_t RCR_ENTRY_PKT_BUF_ADDR_SHIFT ; 
 size_t RCR_ENTRY_PKT_TYPE_SHIFT ; 
 int RCR_PKT_TYPE_TCP ; 
 int RCR_PKT_TYPE_UDP ; 
 int /*<<< orphan*/  RX_SKB_ALLOC_SIZE ; 
 int /*<<< orphan*/  VLAN_ETH_HLEN ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct napi_struct*,struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC8 (struct rx_ring_info*,size_t,struct page***) ; 
 int FUNC9 (struct niu*,struct rx_ring_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct page*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct napi_struct *napi, struct niu *np,
			      struct rx_ring_info *rp)
{
	unsigned int index = rp->rcr_index;
	struct sk_buff *skb;
	int len, num_rcr;

	skb = FUNC7(np->dev, RX_SKB_ALLOC_SIZE);
	if (FUNC14(!skb))
		return FUNC9(np, rp);

	num_rcr = 0;
	while (1) {
		struct page *page, **link;
		u32 rcr_size, append_size;
		u64 addr, val, off;

		num_rcr++;

		val = FUNC4(&rp->rcr[index]);

		len = (val & RCR_ENTRY_L2_LEN) >>
			RCR_ENTRY_L2_LEN_SHIFT;
		len -= ETH_FCS_LEN;

		addr = (val & RCR_ENTRY_PKT_BUF_ADDR) <<
			RCR_ENTRY_PKT_BUF_ADDR_SHIFT;
		page = FUNC8(rp, addr, &link);

		rcr_size = rp->rbr_sizes[(val & RCR_ENTRY_PKTBUFSZ) >>
					 RCR_ENTRY_PKTBUFSZ_SHIFT];

		off = addr & ~PAGE_MASK;
		append_size = rcr_size;
		if (num_rcr == 1) {
			int ptype;

			off += 2;
			append_size -= 2;

			ptype = (val >> RCR_ENTRY_PKT_TYPE_SHIFT);
			if ((ptype == RCR_PKT_TYPE_TCP ||
			     ptype == RCR_PKT_TYPE_UDP) &&
			    !(val & (RCR_ENTRY_NOPORT |
				     RCR_ENTRY_ERROR)))
				skb->ip_summed = CHECKSUM_UNNECESSARY;
			else
				skb->ip_summed = CHECKSUM_NONE;
		}
		if (!(val & RCR_ENTRY_MULTI))
			append_size = len - skb->len;

		FUNC10(skb, page, off, append_size);
		if ((page->index + rp->rbr_block_size) - rcr_size == addr) {
			*link = (struct page *) page->mapping;
			np->ops->unmap_page(np->device, page->index,
					    PAGE_SIZE, DMA_FROM_DEVICE);
			page->index = 0;
			page->mapping = NULL;
			rp->rbr_refill_pending++;
		} else
			FUNC3(page);

		index = FUNC0(rp, index);
		if (!(val & RCR_ENTRY_MULTI))
			break;

	}
	rp->rcr_index = index;

	FUNC12(skb, NET_IP_ALIGN);
	FUNC1(skb, FUNC5(len, VLAN_ETH_HLEN));

	rp->rx_packets++;
	rp->rx_bytes += skb->len;

	skb->protocol = FUNC2(skb, np->dev);
	FUNC11(skb, rp->rx_channel);
	FUNC6(napi, skb);

	return num_rcr;
}
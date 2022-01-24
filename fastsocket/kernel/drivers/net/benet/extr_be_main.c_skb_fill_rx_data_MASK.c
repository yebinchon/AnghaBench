#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data_len; int /*<<< orphan*/  truesize; scalar_t__ len; int /*<<< orphan*/  tail; int /*<<< orphan*/  data; } ;
struct be_rx_page_info {scalar_t__ page_offset; int /*<<< orphan*/ * page; } ;
struct be_queue_info {int /*<<< orphan*/  len; } ;
struct be_rx_obj {struct be_queue_info q; } ;
struct be_rx_compl_info {scalar_t__ pkt_size; int num_rcvd; int /*<<< orphan*/  rxq_idx; } ;
struct TYPE_5__ {scalar_t__ page_offset; } ;
struct TYPE_4__ {int nr_frags; TYPE_2__* frags; } ;

/* Variables and functions */
 scalar_t__ BE_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 struct be_rx_page_info* FUNC1 (struct be_rx_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ rx_frag_size ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC12(struct be_rx_obj *rxo, struct sk_buff *skb,
			     struct be_rx_compl_info *rxcp)
{
	struct be_queue_info *rxq = &rxo->q;
	struct be_rx_page_info *page_info;
	u16 i, j;
	u16 hdr_len, curr_frag_len, remaining;
	u8 *start;

	page_info = FUNC1(rxo, rxcp->rxq_idx);
	start = FUNC5(page_info->page) + page_info->page_offset;
	FUNC6(start);

	/* Copy data in the first descriptor of this completion */
	curr_frag_len = FUNC4(rxcp->pkt_size, rx_frag_size);

	skb->len = curr_frag_len;
	if (curr_frag_len <= BE_HDR_LEN) { /* tiny packet */
		FUNC3(skb->data, start, curr_frag_len);
		/* Complete packet has now been moved to data */
		FUNC7(page_info->page);
		skb->data_len = 0;
		skb->tail += curr_frag_len;
	} else {
		hdr_len = ETH_HLEN;
		FUNC3(skb->data, start, hdr_len);
		FUNC11(skb)->nr_frags = 1;
		FUNC8(skb, 0, page_info->page);
		FUNC11(skb)->frags[0].page_offset =
					page_info->page_offset + hdr_len;
		FUNC10(&FUNC11(skb)->frags[0], curr_frag_len - hdr_len);
		skb->data_len = curr_frag_len - hdr_len;
		skb->truesize += rx_frag_size;
		skb->tail += hdr_len;
	}
	page_info->page = NULL;

	if (rxcp->pkt_size <= rx_frag_size) {
		FUNC0(rxcp->num_rcvd != 1);
		return;
	}

	/* More frags present for this completion */
	FUNC2(&rxcp->rxq_idx, rxq->len);
	remaining = rxcp->pkt_size - curr_frag_len;
	for (i = 1, j = 0; i < rxcp->num_rcvd; i++) {
		page_info = FUNC1(rxo, rxcp->rxq_idx);
		curr_frag_len = FUNC4(remaining, rx_frag_size);

		/* Coalesce all frags from the same physical page in one slot */
		if (page_info->page_offset == 0) {
			/* Fresh page */
			j++;
			FUNC8(skb, j, page_info->page);
			FUNC11(skb)->frags[j].page_offset =
							page_info->page_offset;
			FUNC10(&FUNC11(skb)->frags[j], 0);
			FUNC11(skb)->nr_frags++;
		} else {
			FUNC7(page_info->page);
		}

		FUNC9(&FUNC11(skb)->frags[j], curr_frag_len);
		skb->len += curr_frag_len;
		skb->data_len += curr_frag_len;
		skb->truesize += rx_frag_size;
		remaining -= curr_frag_len;
		FUNC2(&rxcp->rxq_idx, rxq->len);
		page_info->page = NULL;
	}
	FUNC0(j > MAX_SKB_FRAGS);
}
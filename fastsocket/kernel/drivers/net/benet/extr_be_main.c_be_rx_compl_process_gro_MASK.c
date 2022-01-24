#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; int /*<<< orphan*/  rxhash; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  truesize; } ;
struct napi_struct {int dummy; } ;
struct be_rx_page_info {scalar_t__ page_offset; int /*<<< orphan*/  page; } ;
struct be_queue_info {int /*<<< orphan*/  len; } ;
struct be_rx_obj {struct be_queue_info q; struct be_adapter* adapter; } ;
struct be_rx_compl_info {scalar_t__ pkt_size; scalar_t__ num_rcvd; int /*<<< orphan*/  vlan_tag; scalar_t__ vlanf; int /*<<< orphan*/  rss_hash; int /*<<< orphan*/  rxq_idx; } ;
struct be_adapter {int /*<<< orphan*/  vlan_grp; TYPE_1__* netdev; struct be_rx_obj* rx_obj; } ;
struct TYPE_7__ {scalar_t__ page_offset; } ;
struct TYPE_6__ {scalar_t__ nr_frags; TYPE_3__* frags; } ;
struct TYPE_5__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  FUNC1 (struct be_rx_obj*,struct be_rx_compl_info*) ; 
 struct be_rx_page_info* FUNC2 (struct be_rx_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct be_rx_page_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 struct sk_buff* FUNC6 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ rx_frag_size ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 TYPE_2__* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct napi_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC15(struct be_rx_obj *rxo, struct napi_struct *napi,
			     struct be_rx_compl_info *rxcp)
{
	struct be_adapter *adapter = rxo->adapter;
	struct be_rx_page_info *page_info;
	struct sk_buff *skb = NULL;
	struct be_queue_info *rxq = &rxo->q;
	u16 remaining, curr_frag_len;
	u16 i, j;

	skb = FUNC6(napi);
	if (!skb) {
		FUNC1(rxo, rxcp);
		return;
	}

	remaining = rxcp->pkt_size;
	for (i = 0, j = -1; i < rxcp->num_rcvd; i++) {
		page_info = FUNC2(rxo, rxcp->rxq_idx);

		curr_frag_len = FUNC5(remaining, rx_frag_size);

		/* Coalesce all frags from the same physical page in one slot */
		if (i == 0 || page_info->page_offset == 0) {
			/* First frag or Fresh page */
			j++;
			FUNC9(skb, j, page_info->page);
			FUNC13(skb)->frags[j].page_offset =
							page_info->page_offset;
			FUNC11(&FUNC13(skb)->frags[j], 0);
		} else {
			FUNC8(page_info->page);
		}
		FUNC10(&FUNC13(skb)->frags[j], curr_frag_len);
		skb->truesize += rx_frag_size;
		remaining -= curr_frag_len;
		FUNC3(&rxcp->rxq_idx, rxq->len);
		FUNC4(page_info, 0, sizeof(*page_info));
	}
	FUNC0(j > MAX_SKB_FRAGS);

	FUNC13(skb)->nr_frags = j + 1;
	skb->len = rxcp->pkt_size;
	skb->data_len = rxcp->pkt_size;
	skb->ip_summed = CHECKSUM_UNNECESSARY;
	FUNC12(skb, rxo - &adapter->rx_obj[0]);
	if (adapter->netdev->features & NETIF_F_RXHASH)
		skb->rxhash = rxcp->rss_hash;

	if (rxcp->vlanf)
		FUNC14(napi, adapter->vlan_grp, rxcp->vlan_tag);
	else
		FUNC7(napi);
}
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
struct xen_netif_rx_response {scalar_t__ status; int /*<<< orphan*/  offset; } ;
struct skb_shared_info {int nr_frags; TYPE_1__* frags; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  rsp_cons; } ;
struct netfront_info {TYPE_2__ rx; } ;
struct TYPE_3__ {scalar_t__ size; int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ skb_frag_t ;
typedef  int /*<<< orphan*/  RING_IDX ;

/* Variables and functions */
 struct xen_netif_rx_response* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct skb_shared_info* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static RING_IDX FUNC4(struct netfront_info *np,
				  struct sk_buff *skb,
				  struct sk_buff_head *list)
{
	struct skb_shared_info *shinfo = FUNC3(skb);
	int nr_frags = shinfo->nr_frags;
	RING_IDX cons = np->rx.rsp_cons;
	skb_frag_t *frag = shinfo->frags + nr_frags;
	struct sk_buff *nskb;

	while ((nskb = FUNC1(list))) {
		struct xen_netif_rx_response *rx =
			FUNC0(&np->rx, ++cons);

		frag->page = FUNC3(nskb)->frags[0].page;
		frag->page_offset = rx->offset;
		frag->size = rx->status;

		skb->data_len += rx->status;

		FUNC3(nskb)->nr_frags = 0;
		FUNC2(nskb);

		frag++;
		nr_frags++;
	}

	shinfo->nr_frags = nr_frags;
	return cons;
}
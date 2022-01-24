#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xen_netif_tx_request {unsigned int size; unsigned int id; unsigned int offset; int /*<<< orphan*/  flags; void* gref; } ;
struct sk_buff {char* data; } ;
struct TYPE_10__ {scalar_t__ req_prod_pvt; } ;
struct netfront_info {TYPE_5__ tx; void** grant_tx_ref; TYPE_1__* xbdev; int /*<<< orphan*/  gref_tx_head; TYPE_4__* tx_skbs; int /*<<< orphan*/  tx_skb_freelist; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {unsigned int page_offset; unsigned int size; int /*<<< orphan*/  page; } ;
typedef  TYPE_2__ skb_frag_t ;
typedef  void* grant_ref_t ;
struct TYPE_9__ {void* skb; } ;
struct TYPE_8__ {int nr_frags; TYPE_2__* frags; } ;
struct TYPE_6__ {int /*<<< orphan*/  otherend_id; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GNTMAP_readonly ; 
 int /*<<< orphan*/  NETTXF_more_data ; 
 unsigned int PAGE_SIZE ; 
 struct xen_netif_tx_request* FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 struct netfront_info* FUNC5 (struct net_device*) ; 
 unsigned int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct sk_buff*) ; 
 unsigned int FUNC10 (struct sk_buff*) ; 
 TYPE_3__* FUNC11 (struct sk_buff*) ; 
 unsigned long FUNC12 (char*) ; 

__attribute__((used)) static void FUNC13(struct sk_buff *skb, struct net_device *dev,
			      struct xen_netif_tx_request *tx)
{
	struct netfront_info *np = FUNC5(dev);
	char *data = skb->data;
	unsigned long mfn;
	RING_IDX prod = np->tx.req_prod_pvt;
	int frags = FUNC11(skb)->nr_frags;
	unsigned int offset = FUNC6(data);
	unsigned int len = FUNC10(skb);
	unsigned int id;
	grant_ref_t ref;
	int i;

	/* While the header overlaps a page boundary (including being
	   larger than a page), split it it into page-sized chunks. */
	while (len > PAGE_SIZE - offset) {
		tx->size = PAGE_SIZE - offset;
		tx->flags |= NETTXF_more_data;
		len -= tx->size;
		data += tx->size;
		offset = 0;

		id = FUNC2(&np->tx_skb_freelist, np->tx_skbs);
		np->tx_skbs[id].skb = FUNC9(skb);
		tx = FUNC1(&np->tx, prod++);
		tx->id = id;
		ref = FUNC3(&np->gref_tx_head);
		FUNC0((signed short)ref < 0);

		mfn = FUNC12(data);
		FUNC4(ref, np->xbdev->otherend_id,
						mfn, GNTMAP_readonly);

		tx->gref = np->grant_tx_ref[id] = ref;
		tx->offset = offset;
		tx->size = len;
		tx->flags = 0;
	}

	/* Grant backend access to each skb fragment page. */
	for (i = 0; i < frags; i++) {
		skb_frag_t *frag = FUNC11(skb)->frags + i;

		tx->flags |= NETTXF_more_data;

		id = FUNC2(&np->tx_skb_freelist, np->tx_skbs);
		np->tx_skbs[id].skb = FUNC9(skb);
		tx = FUNC1(&np->tx, prod++);
		tx->id = id;
		ref = FUNC3(&np->gref_tx_head);
		FUNC0((signed short)ref < 0);

		mfn = FUNC8(FUNC7(frag->page));
		FUNC4(ref, np->xbdev->otherend_id,
						mfn, GNTMAP_readonly);

		tx->gref = np->grant_tx_ref[id] = ref;
		tx->offset = frag->page_offset;
		tx->size = frag->size;
		tx->flags = 0;
	}

	np->tx.req_prod_pvt = prod;
}
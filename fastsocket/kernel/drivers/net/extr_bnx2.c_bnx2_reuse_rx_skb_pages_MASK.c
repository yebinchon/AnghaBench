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
typedef  size_t u16 ;
struct skb_shared_info {size_t nr_frags; TYPE_1__* frags; } ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct bnx2_sw_pg {struct page* page; } ;
struct bnx2_rx_ring_info {size_t rx_pg_cons; size_t rx_pg_prod; struct bnx2_rx_bd** rx_pg_desc_ring; struct bnx2_sw_pg* rx_pg_ring; } ;
struct bnx2_rx_bd {int /*<<< orphan*/  rx_bd_haddr_lo; int /*<<< orphan*/  rx_bd_haddr_hi; } ;
struct bnx2 {int dummy; } ;
struct TYPE_2__ {struct page* page; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2_sw_pg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2_sw_pg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct skb_shared_info* FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC8(struct bnx2 *bp, struct bnx2_rx_ring_info *rxr,
			struct sk_buff *skb, int count)
{
	struct bnx2_sw_pg *cons_rx_pg, *prod_rx_pg;
	struct bnx2_rx_bd *cons_bd, *prod_bd;
	int i;
	u16 hw_prod, prod;
	u16 cons = rxr->rx_pg_cons;

	cons_rx_pg = &rxr->rx_pg_ring[cons];

	/* The caller was unable to allocate a new page to replace the
	 * last one in the frags array, so we need to recycle that page
	 * and then free the skb.
	 */
	if (skb) {
		struct page *page;
		struct skb_shared_info *shinfo;

		shinfo = FUNC7(skb);
		shinfo->nr_frags--;
		page = shinfo->frags[shinfo->nr_frags].page;
		shinfo->frags[shinfo->nr_frags].page = NULL;

		cons_rx_pg->page = page;
		FUNC4(skb);
	}

	hw_prod = rxr->rx_pg_prod;

	for (i = 0; i < count; i++) {
		prod = FUNC2(hw_prod);

		prod_rx_pg = &rxr->rx_pg_ring[prod];
		cons_rx_pg = &rxr->rx_pg_ring[cons];
		cons_bd = &rxr->rx_pg_desc_ring[FUNC3(cons)]
						[FUNC1(cons)];
		prod_bd = &rxr->rx_pg_desc_ring[FUNC3(prod)]
						[FUNC1(prod)];

		if (prod != cons) {
			prod_rx_pg->page = cons_rx_pg->page;
			cons_rx_pg->page = NULL;
			FUNC6(prod_rx_pg, mapping,
				FUNC5(cons_rx_pg, mapping));

			prod_bd->rx_bd_haddr_hi = cons_bd->rx_bd_haddr_hi;
			prod_bd->rx_bd_haddr_lo = cons_bd->rx_bd_haddr_lo;

		}
		cons = FUNC2(FUNC0(cons));
		hw_prod = FUNC0(hw_prod);
	}
	rxr->rx_pg_prod = hw_prod;
	rxr->rx_pg_cons = cons;
}
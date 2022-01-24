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
struct bnad_rx_unmap_q {int alloc_order; int map_size; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  enet; } ;
struct bnad {TYPE_1__ bna; } ;
struct bna_rcb {TYPE_2__* rxq; int /*<<< orphan*/  id; struct bnad_rx_unmap_q* unmap_q; } ;
struct TYPE_4__ {int buffer_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RXBUF_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnad*,struct bna_rcb*) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct bnad *bnad, struct bna_rcb *rcb)
{
	struct bnad_rx_unmap_q *unmap_q = rcb->unmap_q;
	int mtu, order;

	FUNC3(bnad, rcb);

	mtu = FUNC1(&bnad->bna.enet);
	order = FUNC4(mtu);

	if (FUNC2(rcb->id)) {
		unmap_q->alloc_order = 0;
		unmap_q->map_size = rcb->rxq->buffer_size;
	} else {
		unmap_q->alloc_order = order;
		unmap_q->map_size =
			(rcb->rxq->buffer_size > 2048) ?
			PAGE_SIZE << order : 2048;
	}

	FUNC0(((PAGE_SIZE << order) % unmap_q->map_size));

	unmap_q->type = BNAD_RXBUF_PAGE;

	return 0;
}
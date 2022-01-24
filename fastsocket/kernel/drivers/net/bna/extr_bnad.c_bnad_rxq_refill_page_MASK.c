#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct page {int dummy; } ;
struct bnad_rx_unmap_q {size_t alloc_order; size_t reuse_pi; size_t map_size; struct bnad_rx_unmap* unmap; } ;
struct TYPE_6__ {size_t len; } ;
struct bnad_rx_unmap {size_t page_offset; TYPE_3__ vector; struct page* page; } ;
struct bnad {TYPE_2__* pcidev; } ;
struct bna_rxq_entry {int /*<<< orphan*/  host_addr; } ;
struct bna_rcb {size_t producer_index; size_t q_depth; int /*<<< orphan*/  flags; scalar_t__ sw_q; TYPE_1__* rxq; struct bnad_rx_unmap_q* unmap_q; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  rxbuf_alloc_failed; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RXQ_POST_OK ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int GFP_ATOMIC ; 
 size_t PAGE_SIZE ; 
 int __GFP_COMP ; 
 struct page* FUNC3 (int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct bna_rcb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct page*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  rxbuf_alloc_failed ; 
 int /*<<< orphan*/  FUNC9 () ; 
 size_t FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static u32
FUNC12(struct bnad *bnad, struct bna_rcb *rcb, u32 nalloc)
{
	u32 alloced, prod, q_depth;
	struct bnad_rx_unmap_q *unmap_q = rcb->unmap_q;
	struct bnad_rx_unmap *unmap, *prev;
	struct bna_rxq_entry *rxent;
	struct page *page;
	u32 page_offset, alloc_size;
	dma_addr_t dma_addr;

	prod = rcb->producer_index;
	q_depth = rcb->q_depth;

	alloc_size = PAGE_SIZE << unmap_q->alloc_order;
	alloced = 0;

	while (nalloc--) {
		unmap = &unmap_q->unmap[prod];

		if (unmap_q->reuse_pi < 0) {
			page = FUNC3(GFP_ATOMIC | __GFP_COMP,
					unmap_q->alloc_order);
			page_offset = 0;
		} else {
			prev = &unmap_q->unmap[unmap_q->reuse_pi];
			page = prev->page;
			page_offset = prev->page_offset + unmap_q->map_size;
			FUNC7(page);
		}

		if (FUNC11(!page)) {
			FUNC0(bnad, rxbuf_alloc_failed);
			rcb->rxq->rxbuf_alloc_failed++;
			goto finishing;
		}

		dma_addr = FUNC5(&bnad->pcidev->dev, page, page_offset,
				unmap_q->map_size, DMA_FROM_DEVICE);

		unmap->page = page;
		unmap->page_offset = page_offset;
		FUNC6(&unmap->vector, dma_addr, dma_addr);
		unmap->vector.len = unmap_q->map_size;
		page_offset += unmap_q->map_size;

		if (page_offset < alloc_size)
			unmap_q->reuse_pi = prod;
		else
			unmap_q->reuse_pi = -1;

		rxent = &((struct bna_rxq_entry *)rcb->sw_q)[prod];
		FUNC2(dma_addr, &rxent->host_addr);
		FUNC1(prod, q_depth);
		alloced++;
	}

finishing:
	if (FUNC8(alloced)) {
		rcb->producer_index = prod;
		FUNC9();
		if (FUNC8(FUNC10(BNAD_RXQ_POST_OK, &rcb->flags)))
			FUNC4(rcb);
	}

	return alloced;
}
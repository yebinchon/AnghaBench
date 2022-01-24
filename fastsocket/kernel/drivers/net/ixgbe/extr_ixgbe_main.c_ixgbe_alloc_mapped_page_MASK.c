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
struct page {int dummy; } ;
struct ixgbe_rx_buffer {int dma; scalar_t__ page_offset; struct page* page; } ;
struct TYPE_2__ {int /*<<< orphan*/  alloc_rx_page_failed; } ;
struct ixgbe_ring {TYPE_1__ rx_stats; int /*<<< orphan*/  dev; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int GFP_ATOMIC ; 
 int __GFP_COLD ; 
 int __GFP_COMP ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_ring*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static bool FUNC8(struct ixgbe_ring *rx_ring,
				    struct ixgbe_rx_buffer *bi)
{
	struct page *page = bi->page;
	dma_addr_t dma = bi->dma;

	/* since we are recycling buffers we should seldom need to alloc */
	if (FUNC6(dma))
		return true;

	/* alloc new page for storage */
	if (FUNC6(!page)) {
		page = FUNC1(GFP_ATOMIC | __GFP_COLD | __GFP_COMP,
				   FUNC4(rx_ring));
		if (FUNC7(!page)) {
			rx_ring->rx_stats.alloc_rx_page_failed++;
			return false;
		}
		bi->page = page;
	}

	/* map page for use */
	dma = FUNC2(rx_ring->dev, page, 0,
			   FUNC5(rx_ring), DMA_FROM_DEVICE);

	/*
	 * if mapping failed free memory back to system since
	 * there isn't much point in holding memory we can't use
	 */
	if (FUNC3(rx_ring->dev, dma)) {
		FUNC0(page, FUNC4(rx_ring));
		bi->page = NULL;

		rx_ring->rx_stats.alloc_rx_page_failed++;
		return false;
	}

	bi->dma = dma;
	bi->page_offset = 0;

	return true;
}
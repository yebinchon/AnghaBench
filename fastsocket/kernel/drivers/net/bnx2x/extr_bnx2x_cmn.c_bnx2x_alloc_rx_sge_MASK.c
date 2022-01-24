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
struct sw_rx_page {struct page* page; } ;
struct page {int dummy; } ;
struct eth_rx_sge {void* addr_lo; void* addr_hi; } ;
struct bnx2x_fastpath {struct eth_rx_sge* rx_sge_ring; struct sw_rx_page* rx_page_ring; } ;
struct bnx2x {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGES_PER_SGE_SHIFT ; 
 int /*<<< orphan*/  SGE_PAGES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sw_rx_page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct bnx2x *bp, struct bnx2x_fastpath *fp,
			      u16 index, gfp_t gfp_mask)
{
	struct page *page = FUNC4(gfp_mask, PAGES_PER_SGE_SHIFT);
	struct sw_rx_page *sw_buf = &fp->rx_page_ring[index];
	struct eth_rx_sge *sge = &fp->rx_sge_ring[index];
	dma_addr_t mapping;

	if (FUNC9(page == NULL)) {
		FUNC0("Can't alloc sge\n");
		return -ENOMEM;
	}

	mapping = FUNC6(&bp->pdev->dev, page, 0,
			       SGE_PAGES, DMA_FROM_DEVICE);
	if (FUNC9(FUNC7(&bp->pdev->dev, mapping))) {
		FUNC3(page, PAGES_PER_SGE_SHIFT);
		FUNC0("Can't map sge\n");
		return -ENOMEM;
	}

	sw_buf->page = page;
	FUNC8(sw_buf, mapping, mapping);

	sge->addr_hi = FUNC5(FUNC1(mapping));
	sge->addr_lo = FUNC5(FUNC2(mapping));

	return 0;
}
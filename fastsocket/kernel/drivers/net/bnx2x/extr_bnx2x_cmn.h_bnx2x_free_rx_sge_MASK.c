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
struct eth_rx_sge {scalar_t__ addr_lo; scalar_t__ addr_hi; } ;
struct bnx2x_fastpath {struct eth_rx_sge* rx_sge_ring; struct sw_rx_page* rx_page_ring; } ;
struct bnx2x {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  PAGES_PER_SGE_SHIFT ; 
 int /*<<< orphan*/  SGE_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sw_rx_page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 

__attribute__((used)) static inline void FUNC3(struct bnx2x *bp,
				     struct bnx2x_fastpath *fp, u16 index)
{
	struct sw_rx_page *sw_buf = &fp->rx_page_ring[index];
	struct page *page = sw_buf->page;
	struct eth_rx_sge *sge = &fp->rx_sge_ring[index];

	/* Skip "next page" elements */
	if (!page)
		return;

	FUNC2(&bp->pdev->dev, FUNC1(sw_buf, mapping),
		       SGE_PAGES, DMA_FROM_DEVICE);
	FUNC0(page, PAGES_PER_SGE_SHIFT);

	sw_buf->page = NULL;
	sge->addr_hi = 0;
	sge->addr_lo = 0;
}
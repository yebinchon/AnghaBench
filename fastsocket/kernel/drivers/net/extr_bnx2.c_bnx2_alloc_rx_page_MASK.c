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
typedef  int u64 ;
typedef  size_t u16 ;
struct page {int dummy; } ;
struct bnx2_sw_pg {struct page* page; } ;
struct bnx2_rx_ring_info {struct bnx2_rx_bd** rx_pg_desc_ring; struct bnx2_sw_pg* rx_pg_ring; } ;
struct bnx2_rx_bd {int rx_bd_haddr_hi; int rx_bd_haddr_lo; } ;
struct bnx2 {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2_sw_pg*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline int
FUNC7(struct bnx2 *bp, struct bnx2_rx_ring_info *rxr, u16 index, gfp_t gfp)
{
	dma_addr_t mapping;
	struct bnx2_sw_pg *rx_pg = &rxr->rx_pg_ring[index];
	struct bnx2_rx_bd *rxbd =
		&rxr->rx_pg_desc_ring[FUNC1(index)][FUNC0(index)];
	struct page *page = FUNC3(gfp);

	if (!page)
		return -ENOMEM;
	mapping = FUNC4(&bp->pdev->dev, page, 0, PAGE_SIZE,
			       PCI_DMA_FROMDEVICE);
	if (FUNC5(&bp->pdev->dev, mapping)) {
		FUNC2(page);
		return -EIO;
	}

	rx_pg->page = page;
	FUNC6(rx_pg, mapping, mapping);
	rxbd->rx_bd_haddr_hi = (u64) mapping >> 32;
	rxbd->rx_bd_haddr_lo = (u64) mapping & 0xffffffff;
	return 0;
}
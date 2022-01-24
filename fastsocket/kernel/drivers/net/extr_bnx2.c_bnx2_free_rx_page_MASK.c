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
struct page {int dummy; } ;
struct bnx2_sw_pg {struct page* page; } ;
struct bnx2_rx_ring_info {struct bnx2_sw_pg* rx_pg_ring; } ;
struct bnx2 {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2_sw_pg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bnx2 *bp, struct bnx2_rx_ring_info *rxr, u16 index)
{
	struct bnx2_sw_pg *rx_pg = &rxr->rx_pg_ring[index];
	struct page *page = rx_pg->page;

	if (!page)
		return;

	FUNC1(&bp->pdev->dev, FUNC2(rx_pg, mapping),
		       PAGE_SIZE, PCI_DMA_FROMDEVICE);

	FUNC0(page);
	rx_pg->page = NULL;
}
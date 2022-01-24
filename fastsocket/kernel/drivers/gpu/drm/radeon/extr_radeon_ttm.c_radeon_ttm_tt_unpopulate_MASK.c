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
struct ttm_tt {int page_flags; unsigned int num_pages; int /*<<< orphan*/  bdev; } ;
struct TYPE_2__ {scalar_t__* dma_address; } ;
struct radeon_ttm_tt {TYPE_1__ ttm; } ;
struct radeon_device {int flags; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int RADEON_IS_AGP ; 
 int TTM_PAGE_FLAG_SG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct radeon_device* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_tt*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_tt*) ; 

__attribute__((used)) static void FUNC6(struct ttm_tt *ttm)
{
	struct radeon_device *rdev;
	struct radeon_ttm_tt *gtt = (void *)ttm;
	unsigned i;
	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);

	if (slave)
		return;

	rdev = FUNC1(ttm->bdev);
#if __OS_HAS_AGP
	if (rdev->flags & RADEON_IS_AGP) {
		ttm_agp_tt_unpopulate(ttm);
		return;
	}
#endif

#ifdef CONFIG_SWIOTLB
	if (swiotlb_nr_tbl()) {
		ttm_dma_unpopulate(&gtt->ttm, rdev->dev);
		return;
	}
#endif

	for (i = 0; i < ttm->num_pages; i++) {
		if (gtt->ttm.dma_address[i]) {
			FUNC0(rdev->pdev, gtt->ttm.dma_address[i],
				       PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
		}
	}

	FUNC5(ttm);
}
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
struct ttm_tt {int page_flags; scalar_t__ state; unsigned int num_pages; int /*<<< orphan*/ * pages; int /*<<< orphan*/  bdev; scalar_t__ sg; } ;
struct TYPE_2__ {scalar_t__* dma_address; } ;
struct radeon_ttm_tt {TYPE_1__ ttm; } ;
struct radeon_device {int flags; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int RADEON_IS_AGP ; 
 int TTM_PAGE_FLAG_SG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct radeon_device* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ tt_unbound ; 
 scalar_t__ tt_unpopulated ; 
 int FUNC6 (struct ttm_tt*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ttm_tt*) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_tt*) ; 

__attribute__((used)) static int FUNC10(struct ttm_tt *ttm)
{
	struct radeon_device *rdev;
	struct radeon_ttm_tt *gtt = (void *)ttm;
	unsigned i;
	int r;
	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);

	if (ttm->state != tt_unpopulated)
		return 0;

	if (slave && ttm->sg) {
		FUNC0(ttm->sg, ttm->pages,
						 gtt->ttm.dma_address, ttm->num_pages);
		ttm->state = tt_unbound;
		return 0;
	}

	rdev = FUNC4(ttm->bdev);
#if __OS_HAS_AGP
	if (rdev->flags & RADEON_IS_AGP) {
		return ttm_agp_tt_populate(ttm);
	}
#endif

#ifdef CONFIG_SWIOTLB
	if (swiotlb_nr_tbl()) {
		return ttm_dma_populate(&gtt->ttm, rdev->dev);
	}
#endif

	r = FUNC8(ttm);
	if (r) {
		return r;
	}

	for (i = 0; i < ttm->num_pages; i++) {
		gtt->ttm.dma_address[i] = FUNC2(rdev->pdev, ttm->pages[i],
						       0, PAGE_SIZE,
						       PCI_DMA_BIDIRECTIONAL);
		if (FUNC1(rdev->pdev, gtt->ttm.dma_address[i])) {
			while (--i) {
				FUNC3(rdev->pdev, gtt->ttm.dma_address[i],
					       PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
				gtt->ttm.dma_address[i] = 0;
			}
			FUNC9(ttm);
			return -EFAULT;
		}
	}
	return 0;
}
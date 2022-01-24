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
struct ttm_dma_tt {scalar_t__* dma_address; } ;
struct TYPE_2__ {scalar_t__ stat; } ;
struct nouveau_drm {TYPE_1__ agp; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ ENABLED ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int TTM_PAGE_FLAG_SG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,scalar_t__*,unsigned int) ; 
 struct nouveau_drm* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ tt_unbound ; 
 scalar_t__ tt_unpopulated ; 
 int FUNC6 (struct ttm_tt*) ; 
 int FUNC7 (void*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ttm_tt*) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_tt*) ; 

__attribute__((used)) static int
FUNC10(struct ttm_tt *ttm)
{
	struct ttm_dma_tt *ttm_dma = (void *)ttm;
	struct nouveau_drm *drm;
	struct drm_device *dev;
	unsigned i;
	int r;
	bool slave = !!(ttm->page_flags & TTM_PAGE_FLAG_SG);

	if (ttm->state != tt_unpopulated)
		return 0;

	if (slave && ttm->sg) {
		/* make userspace faulting work */
		FUNC0(ttm->sg, ttm->pages,
						 ttm_dma->dma_address, ttm->num_pages);
		ttm->state = tt_unbound;
		return 0;
	}

	drm = FUNC1(ttm->bdev);
	dev = drm->dev;

#if __OS_HAS_AGP
	if (drm->agp.stat == ENABLED) {
		return ttm_agp_tt_populate(ttm);
	}
#endif

#ifdef CONFIG_SWIOTLB
	if (swiotlb_nr_tbl()) {
		return ttm_dma_populate((void *)ttm, dev->dev);
	}
#endif

	r = FUNC8(ttm);
	if (r) {
		return r;
	}

	for (i = 0; i < ttm->num_pages; i++) {
		ttm_dma->dma_address[i] = FUNC3(dev->pdev, ttm->pages[i],
						   0, PAGE_SIZE,
						   PCI_DMA_BIDIRECTIONAL);
		if (FUNC2(dev->pdev, ttm_dma->dma_address[i])) {
			while (--i) {
				FUNC4(dev->pdev, ttm_dma->dma_address[i],
					       PAGE_SIZE, PCI_DMA_BIDIRECTIONAL);
				ttm_dma->dma_address[i] = 0;
			}
			FUNC9(ttm);
			return -EFAULT;
		}
	}
	return 0;
}
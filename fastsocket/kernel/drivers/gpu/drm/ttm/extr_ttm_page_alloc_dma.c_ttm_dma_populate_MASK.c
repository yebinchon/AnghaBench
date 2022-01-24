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
struct ttm_tt {scalar_t__ state; int page_flags; unsigned int num_pages; int /*<<< orphan*/ * pages; int /*<<< orphan*/  caching_state; TYPE_1__* glob; } ;
struct ttm_mem_global {int dummy; } ;
struct ttm_dma_tt {int /*<<< orphan*/  pages_list; struct ttm_tt ttm; } ;
struct dma_pool {int dummy; } ;
struct device {int dummy; } ;
typedef  int gfp_t ;
typedef  enum pool_type { ____Placeholder_pool_type } pool_type ;
struct TYPE_2__ {struct ttm_mem_global* mem_glob; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_HIGHUSER ; 
 int GFP_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct dma_pool*) ; 
 int TTM_PAGE_FLAG_DMA32 ; 
 int TTM_PAGE_FLAG_SWAPPED ; 
 int TTM_PAGE_FLAG_ZERO_ALLOC ; 
 int __GFP_ZERO ; 
 scalar_t__ tt_unbound ; 
 scalar_t__ tt_unpopulated ; 
 struct dma_pool* FUNC2 (struct device*,int) ; 
 int FUNC3 (struct dma_pool*,struct ttm_dma_tt*,unsigned int) ; 
 struct dma_pool* FUNC4 (struct device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_dma_tt*,struct device*) ; 
 int FUNC6 (struct ttm_mem_global*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ttm_tt*) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct ttm_dma_tt *ttm_dma, struct device *dev)
{
	struct ttm_tt *ttm = &ttm_dma->ttm;
	struct ttm_mem_global *mem_glob = ttm->glob->mem_glob;
	struct dma_pool *pool;
	enum pool_type type;
	unsigned i;
	gfp_t gfp_flags;
	int ret;

	if (ttm->state != tt_unpopulated)
		return 0;

	type = FUNC7(ttm->page_flags, ttm->caching_state);
	if (ttm->page_flags & TTM_PAGE_FLAG_DMA32)
		gfp_flags = GFP_USER | GFP_DMA32;
	else
		gfp_flags = GFP_HIGHUSER;
	if (ttm->page_flags & TTM_PAGE_FLAG_ZERO_ALLOC)
		gfp_flags |= __GFP_ZERO;

	pool = FUNC2(dev, type);
	if (!pool) {
		pool = FUNC4(dev, gfp_flags, type);
		if (FUNC1(pool)) {
			return -ENOMEM;
		}
	}

	FUNC0(&ttm_dma->pages_list);
	for (i = 0; i < ttm->num_pages; ++i) {
		ret = FUNC3(pool, ttm_dma, i);
		if (ret != 0) {
			FUNC5(ttm_dma, dev);
			return -ENOMEM;
		}

		ret = FUNC6(mem_glob, ttm->pages[i],
						false, false);
		if (FUNC9(ret != 0)) {
			FUNC5(ttm_dma, dev);
			return -ENOMEM;
		}
	}

	if (FUNC9(ttm->page_flags & TTM_PAGE_FLAG_SWAPPED)) {
		ret = FUNC8(ttm);
		if (FUNC9(ret != 0)) {
			FUNC5(ttm_dma, dev);
			return ret;
		}
	}

	ttm->state = tt_unbound;
	return 0;
}
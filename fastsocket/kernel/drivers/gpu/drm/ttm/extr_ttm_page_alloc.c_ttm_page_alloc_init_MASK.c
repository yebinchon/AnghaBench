#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ttm_mem_global {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {unsigned int max_size; int /*<<< orphan*/  alloc_size; int /*<<< orphan*/  small; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; TYPE_1__ options; int /*<<< orphan*/  uc_pool_dma32; int /*<<< orphan*/  wc_pool_dma32; int /*<<< orphan*/  uc_pool; int /*<<< orphan*/  wc_pool; } ;

/* Variables and functions */
 int GFP_DMA32 ; 
 int GFP_HIGHUSER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GFP_USER ; 
 int /*<<< orphan*/  NUM_PAGES_TO_ALLOC ; 
 int /*<<< orphan*/  SMALL_ALLOCATION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* _manager ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ttm_pool_kobj_type ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct ttm_mem_global *glob, unsigned max_pages)
{
	int ret;

	FUNC0(_manager);

	FUNC4("Initializing pool allocator\n");

	_manager = FUNC3(sizeof(*_manager), GFP_KERNEL);

	FUNC5(&_manager->wc_pool, GFP_HIGHUSER, "wc");

	FUNC5(&_manager->uc_pool, GFP_HIGHUSER, "uc");

	FUNC5(&_manager->wc_pool_dma32,
				  GFP_USER | GFP_DMA32, "wc dma");

	FUNC5(&_manager->uc_pool_dma32,
				  GFP_USER | GFP_DMA32, "uc dma");

	_manager->options.max_size = max_pages;
	_manager->options.small = SMALL_ALLOCATION;
	_manager->options.alloc_size = NUM_PAGES_TO_ALLOC;

	ret = FUNC1(&_manager->kobj, &ttm_pool_kobj_type,
				   &glob->kobj, "pool");
	if (FUNC7(ret != 0)) {
		FUNC2(&_manager->kobj);
		_manager = NULL;
		return ret;
	}

	FUNC6(_manager);

	return 0;
}
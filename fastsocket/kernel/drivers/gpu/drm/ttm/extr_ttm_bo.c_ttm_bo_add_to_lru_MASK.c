#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ttm_mem_type_manager {int /*<<< orphan*/  lru; } ;
struct TYPE_3__ {int placement; size_t mem_type; } ;
struct ttm_buffer_object {int /*<<< orphan*/  list_kref; TYPE_2__* glob; int /*<<< orphan*/  swap; int /*<<< orphan*/ * ttm; int /*<<< orphan*/  lru; TYPE_1__ mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
struct TYPE_4__ {int /*<<< orphan*/  swap_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TTM_PL_FLAG_NO_EVICT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_buffer_object*) ; 

void FUNC5(struct ttm_buffer_object *bo)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_mem_type_manager *man;

	FUNC0(!FUNC4(bo));

	if (!(bo->mem.placement & TTM_PL_FLAG_NO_EVICT)) {

		FUNC0(!FUNC3(&bo->lru));

		man = &bdev->man[bo->mem.mem_type];
		FUNC2(&bo->lru, &man->lru);
		FUNC1(&bo->list_kref);

		if (bo->ttm != NULL) {
			FUNC2(&bo->swap, &bo->glob->swap_lru);
			FUNC1(&bo->list_kref);
		}
	}
}
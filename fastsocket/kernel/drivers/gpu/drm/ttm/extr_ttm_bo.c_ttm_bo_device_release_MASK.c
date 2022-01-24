#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ttm_mem_type_manager {int has_type; int use_type; int /*<<< orphan*/  lru; } ;
struct ttm_bo_global {int /*<<< orphan*/  lru_lock; int /*<<< orphan*/  device_list_mutex; } ;
struct ttm_bo_device {int /*<<< orphan*/  vm_lock; int /*<<< orphan*/  addr_space_mm; struct ttm_mem_type_manager* man; int /*<<< orphan*/  ddestroy; int /*<<< orphan*/  wq; int /*<<< orphan*/  device_list; struct ttm_bo_global* glob; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned int TTM_NUM_MEM_TYPES ; 
 unsigned int TTM_PL_SYSTEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct ttm_bo_device*,unsigned int) ; 
 scalar_t__ FUNC13 (struct ttm_bo_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct ttm_bo_device *bdev)
{
	int ret = 0;
	unsigned i = TTM_NUM_MEM_TYPES;
	struct ttm_mem_type_manager *man;
	struct ttm_bo_global *glob = bdev->glob;

	while (i--) {
		man = &bdev->man[i];
		if (man->has_type) {
			man->use_type = false;
			if ((i != TTM_PL_SYSTEM) && FUNC12(bdev, i)) {
				ret = -EBUSY;
				FUNC9("DRM memory manager type %d is not clean\n",
				       i);
			}
			man->has_type = false;
		}
	}

	FUNC7(&glob->device_list_mutex);
	FUNC5(&bdev->device_list);
	FUNC8(&glob->device_list_mutex);

	FUNC2(&bdev->wq);

	while (FUNC13(bdev, true))
		;

	FUNC10(&glob->lru_lock);
	if (FUNC6(&bdev->ddestroy))
		FUNC1("Delayed destroy list was clean\n");

	if (FUNC6(&bdev->man[0].lru))
		FUNC1("Swap list was clean\n");
	FUNC11(&glob->lru_lock);

	FUNC0(!FUNC3(&bdev->addr_space_mm));
	FUNC14(&bdev->vm_lock);
	FUNC4(&bdev->addr_space_mm);
	FUNC15(&bdev->vm_lock);

	return ret;
}
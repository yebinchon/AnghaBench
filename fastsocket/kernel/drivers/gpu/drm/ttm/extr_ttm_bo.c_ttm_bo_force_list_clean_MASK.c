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
struct ttm_mem_type_manager {int /*<<< orphan*/  lru; } ;
struct ttm_bo_global {int /*<<< orphan*/  lru_lock; } ;
struct ttm_bo_device {struct ttm_bo_global* glob; struct ttm_mem_type_manager* man; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ttm_bo_device*,unsigned int,int,int) ; 

__attribute__((used)) static int FUNC5(struct ttm_bo_device *bdev,
					unsigned mem_type, bool allow_errors)
{
	struct ttm_mem_type_manager *man = &bdev->man[mem_type];
	struct ttm_bo_global *glob = bdev->glob;
	int ret;

	/*
	 * Can't use standard list traversal since we're unlocking.
	 */

	FUNC2(&glob->lru_lock);
	while (!FUNC0(&man->lru)) {
		FUNC3(&glob->lru_lock);
		ret = FUNC4(bdev, mem_type, false, false);
		if (ret) {
			if (allow_errors) {
				return ret;
			} else {
				FUNC1("Cleanup eviction failed\n");
			}
		}
		FUNC2(&glob->lru_lock);
	}
	FUNC3(&glob->lru_lock);
	return 0;
}
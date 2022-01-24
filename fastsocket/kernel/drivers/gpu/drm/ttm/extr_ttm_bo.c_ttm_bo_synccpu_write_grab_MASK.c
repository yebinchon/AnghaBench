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
struct ttm_buffer_object {int /*<<< orphan*/  cpu_writers; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int /*<<< orphan*/  fence_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ttm_buffer_object*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_buffer_object*) ; 
 int FUNC6 (struct ttm_buffer_object*,int,int,int) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct ttm_buffer_object *bo, bool no_wait)
{
	struct ttm_bo_device *bdev = bo->bdev;
	int ret = 0;

	/*
	 * Using ttm_bo_reserve makes sure the lru lists are updated.
	 */

	ret = FUNC4(bo, true, no_wait, false, 0);
	if (FUNC7(ret != 0))
		return ret;
	FUNC2(&bdev->fence_lock);
	ret = FUNC6(bo, false, true, no_wait);
	FUNC3(&bdev->fence_lock);
	if (FUNC1(ret == 0))
		FUNC0(&bo->cpu_writers);
	FUNC5(bo);
	return ret;
}
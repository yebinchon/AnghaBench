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
struct ttm_buffer_object {int /*<<< orphan*/  ddestroy; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  reserved; int /*<<< orphan*/  sync_obj; struct ttm_bo_global* glob; struct ttm_bo_device* bdev; } ;
struct ttm_bo_global {int /*<<< orphan*/  lru_lock; } ;
struct ttm_bo_driver {int (* sync_obj_wait ) (void*,int,int) ;int /*<<< orphan*/  (* sync_obj_unref ) (void**) ;void* (* sync_obj_ref ) (int /*<<< orphan*/ ) ;} ;
struct ttm_bo_device {int /*<<< orphan*/  fence_lock; struct ttm_bo_driver* driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_buffer_object*) ; 
 int FUNC10 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct ttm_buffer_object*,int,int) ; 
 int FUNC12 (struct ttm_buffer_object*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ttm_buffer_object*,int,int,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct ttm_buffer_object *bo,
					  bool interruptible,
					  bool no_wait_gpu)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_bo_driver *driver = bdev->driver;
	struct ttm_bo_global *glob = bo->glob;
	int put_count;
	int ret;

	FUNC4(&bdev->fence_lock);
	ret = FUNC13(bo, false, false, true);

	if (ret && !no_wait_gpu) {
		void *sync_obj;

		/*
		 * Take a reference to the fence and unreserve,
		 * at this point the buffer should be dead, so
		 * no new sync objects can be attached.
		 */
		sync_obj = driver->sync_obj_ref(bo->sync_obj);
		FUNC5(&bdev->fence_lock);

		FUNC1(&bo->reserved, 0);
		FUNC15(&bo->event_queue);
		FUNC5(&glob->lru_lock);

		ret = driver->sync_obj_wait(sync_obj, false, interruptible);
		driver->sync_obj_unref(&sync_obj);
		if (ret)
			return ret;

		/*
		 * remove sync_obj with ttm_bo_wait, the wait should be
		 * finished, and no new wait object should have been added.
		 */
		FUNC4(&bdev->fence_lock);
		ret = FUNC13(bo, false, false, true);
		FUNC0(ret);
		FUNC5(&bdev->fence_lock);
		if (ret)
			return ret;

		FUNC4(&glob->lru_lock);
		ret = FUNC12(bo, false, true, false, 0);

		/*
		 * We raced, and lost, someone else holds the reservation now,
		 * and is probably busy in ttm_bo_cleanup_memtype_use.
		 *
		 * Even if it's not the case, because we finished waiting any
		 * delayed destruction would succeed, so just return success
		 * here.
		 */
		if (ret) {
			FUNC5(&glob->lru_lock);
			return 0;
		}
	} else
		FUNC5(&bdev->fence_lock);

	if (ret || FUNC14(FUNC3(&bo->ddestroy))) {
		FUNC1(&bo->reserved, 0);
		FUNC15(&bo->event_queue);
		FUNC5(&glob->lru_lock);
		return ret;
	}

	put_count = FUNC10(bo);
	FUNC2(&bo->ddestroy);
	++put_count;

	FUNC5(&glob->lru_lock);
	FUNC9(bo);

	FUNC11(bo, put_count, true);

	return 0;
}
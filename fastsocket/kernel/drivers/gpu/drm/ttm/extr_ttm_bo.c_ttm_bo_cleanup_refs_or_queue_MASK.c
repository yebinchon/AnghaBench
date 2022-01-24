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
struct ttm_buffer_object {int /*<<< orphan*/  ddestroy; int /*<<< orphan*/  list_kref; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  reserved; scalar_t__ sync_obj; struct ttm_bo_global* glob; struct ttm_bo_device* bdev; } ;
struct ttm_bo_global {int /*<<< orphan*/  lru_lock; } ;
struct ttm_bo_driver {int /*<<< orphan*/  (* sync_obj_unref ) (void**) ;int /*<<< orphan*/  (* sync_obj_flush ) (void*) ;void* (* sync_obj_ref ) (scalar_t__) ;} ;
struct ttm_bo_device {int /*<<< orphan*/  wq; int /*<<< orphan*/  ddestroy; int /*<<< orphan*/  fence_lock; struct ttm_bo_driver* driver; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_buffer_object*) ; 
 int FUNC10 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC11 (struct ttm_buffer_object*,int,int) ; 
 int FUNC12 (struct ttm_buffer_object*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ttm_buffer_object*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct ttm_buffer_object *bo)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_bo_global *glob = bo->glob;
	struct ttm_bo_driver *driver = bdev->driver;
	void *sync_obj = NULL;
	int put_count;
	int ret;

	FUNC4(&glob->lru_lock);
	ret = FUNC12(bo, false, true, false, 0);

	FUNC4(&bdev->fence_lock);
	(void) FUNC13(bo, false, false, true);
	if (!ret && !bo->sync_obj) {
		FUNC5(&bdev->fence_lock);
		put_count = FUNC10(bo);

		FUNC5(&glob->lru_lock);
		FUNC9(bo);

		FUNC11(bo, put_count, true);

		return;
	}
	if (bo->sync_obj)
		sync_obj = driver->sync_obj_ref(bo->sync_obj);
	FUNC5(&bdev->fence_lock);

	if (!ret) {
		FUNC0(&bo->reserved, 0);
		FUNC14(&bo->event_queue);
	}

	FUNC1(&bo->list_kref);
	FUNC2(&bo->ddestroy, &bdev->ddestroy);
	FUNC5(&glob->lru_lock);

	if (sync_obj) {
		driver->sync_obj_flush(sync_obj);
		driver->sync_obj_unref(&sync_obj);
	}
	FUNC3(&bdev->wq,
			      ((HZ / 100) < 1) ? 1 : HZ / 100);
}
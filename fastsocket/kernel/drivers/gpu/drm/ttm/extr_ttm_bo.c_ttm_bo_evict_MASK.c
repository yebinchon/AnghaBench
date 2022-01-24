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
struct ttm_placement {scalar_t__ num_busy_placement; scalar_t__ num_placement; scalar_t__ lpfn; scalar_t__ fpfn; } ;
struct TYPE_3__ {int io_reserved_vm; scalar_t__ io_reserved_count; } ;
struct ttm_mem_reg {TYPE_1__ bus; int /*<<< orphan*/ * mm_node; } ;
struct ttm_buffer_object {int evicted; struct ttm_mem_reg mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {TYPE_2__* driver; int /*<<< orphan*/  fence_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* evict_flags ) (struct ttm_buffer_object*,struct ttm_placement*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ttm_buffer_object*,struct ttm_placement*) ; 
 int FUNC5 (struct ttm_buffer_object*,struct ttm_mem_reg*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int FUNC8 (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_buffer_object*,struct ttm_placement*) ; 
 int FUNC10 (struct ttm_buffer_object*,int,int,int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct ttm_buffer_object *bo, bool interruptible,
			bool no_wait_gpu)
{
	struct ttm_bo_device *bdev = bo->bdev;
	struct ttm_mem_reg evict_mem;
	struct ttm_placement placement;
	int ret = 0;

	FUNC2(&bdev->fence_lock);
	ret = FUNC10(bo, false, interruptible, no_wait_gpu);
	FUNC3(&bdev->fence_lock);

	if (FUNC11(ret != 0)) {
		if (ret != -ERESTARTSYS) {
			FUNC1("Failed to expire sync object before buffer eviction\n");
		}
		goto out;
	}

	FUNC0(!FUNC6(bo));

	evict_mem = bo->mem;
	evict_mem.mm_node = NULL;
	evict_mem.bus.io_reserved_vm = false;
	evict_mem.bus.io_reserved_count = 0;

	placement.fpfn = 0;
	placement.lpfn = 0;
	placement.num_placement = 0;
	placement.num_busy_placement = 0;
	bdev->driver->evict_flags(bo, &placement);
	ret = FUNC8(bo, &placement, &evict_mem, interruptible,
				no_wait_gpu);
	if (ret) {
		if (ret != -ERESTARTSYS) {
			FUNC1("Failed to find memory space for buffer 0x%p eviction\n",
			       bo);
			FUNC9(bo, &placement);
		}
		goto out;
	}

	ret = FUNC5(bo, &evict_mem, true, interruptible,
				     no_wait_gpu);
	if (ret) {
		if (ret != -ERESTARTSYS)
			FUNC1("Buffer eviction failed\n");
		FUNC7(bo, &evict_mem);
		goto out;
	}
	bo->evicted = true;
out:
	return ret;
}
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
typedef  int u32 ;
struct ttm_placement {int num_placement; int* placement; int num_busy_placement; int* busy_placement; scalar_t__ lpfn; scalar_t__ fpfn; } ;
struct ttm_mem_reg {int /*<<< orphan*/ * mm_node; } ;
struct ttm_buffer_object {int /*<<< orphan*/  bdev; struct ttm_mem_reg mem; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int TTM_PL_FLAG_TT ; 
 int TTM_PL_MASK_CACHING ; 
 struct radeon_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ttm_buffer_object*,int,int,struct ttm_mem_reg*,struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int FUNC3 (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,int,int) ; 
 int FUNC4 (struct ttm_buffer_object*,int,int,struct ttm_mem_reg*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ttm_buffer_object *bo,
				bool evict, bool interruptible,
				bool no_wait_gpu,
				struct ttm_mem_reg *new_mem)
{
	struct radeon_device *rdev;
	struct ttm_mem_reg *old_mem = &bo->mem;
	struct ttm_mem_reg tmp_mem;
	struct ttm_placement placement;
	u32 placements;
	int r;

	rdev = FUNC0(bo->bdev);
	tmp_mem = *new_mem;
	tmp_mem.mm_node = NULL;
	placement.fpfn = 0;
	placement.lpfn = 0;
	placement.num_placement = 1;
	placement.placement = &placements;
	placement.num_busy_placement = 1;
	placement.busy_placement = &placements;
	placements = TTM_PL_MASK_CACHING | TTM_PL_FLAG_TT;
	r = FUNC3(bo, &placement, &tmp_mem,
			     interruptible, no_wait_gpu);
	if (FUNC5(r)) {
		return r;
	}
	r = FUNC4(bo, true, no_wait_gpu, &tmp_mem);
	if (FUNC5(r)) {
		goto out_cleanup;
	}
	r = FUNC1(bo, true, no_wait_gpu, new_mem, old_mem);
	if (FUNC5(r)) {
		goto out_cleanup;
	}
out_cleanup:
	FUNC2(bo, &tmp_mem);
	return r;
}
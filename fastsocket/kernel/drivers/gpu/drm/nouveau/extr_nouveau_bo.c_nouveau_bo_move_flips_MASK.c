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
struct ttm_placement {int num_placement; int num_busy_placement; int* placement; int* busy_placement; scalar_t__ lpfn; scalar_t__ fpfn; } ;
struct ttm_mem_reg {int /*<<< orphan*/ * mm_node; } ;
struct ttm_buffer_object {int dummy; } ;

/* Variables and functions */
 int TTM_PL_FLAG_TT ; 
 int TTM_PL_MASK_CACHING ; 
 int FUNC0 (struct ttm_buffer_object*,int,int,int,struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int FUNC2 (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,int,int) ; 
 int FUNC3 (struct ttm_buffer_object*,int,int,struct ttm_mem_reg*) ; 

__attribute__((used)) static int
FUNC4(struct ttm_buffer_object *bo, bool evict, bool intr,
		      bool no_wait_gpu, struct ttm_mem_reg *new_mem)
{
	u32 placement_memtype = TTM_PL_FLAG_TT | TTM_PL_MASK_CACHING;
	struct ttm_placement placement;
	struct ttm_mem_reg tmp_mem;
	int ret;

	placement.fpfn = placement.lpfn = 0;
	placement.num_placement = placement.num_busy_placement = 1;
	placement.placement = placement.busy_placement = &placement_memtype;

	tmp_mem = *new_mem;
	tmp_mem.mm_node = NULL;
	ret = FUNC2(bo, &placement, &tmp_mem, intr, no_wait_gpu);
	if (ret)
		return ret;

	ret = FUNC3(bo, true, no_wait_gpu, &tmp_mem);
	if (ret)
		goto out;

	ret = FUNC0(bo, true, intr, no_wait_gpu, new_mem);
	if (ret)
		goto out;

out:
	FUNC1(bo, &tmp_mem);
	return ret;
}
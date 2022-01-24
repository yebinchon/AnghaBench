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
struct ttm_mem_reg {scalar_t__ mem_type; int /*<<< orphan*/ * mm_node; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; int /*<<< orphan*/  ttm; int /*<<< orphan*/  bdev; } ;
struct nouveau_drm_tile {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  move; } ;
struct nouveau_drm {int /*<<< orphan*/  device; TYPE_1__ ttm; } ;
struct nouveau_bo {struct nouveau_drm_tile* tile; } ;
struct TYPE_4__ {scalar_t__ card_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NV_50 ; 
 scalar_t__ TTM_PL_SYSTEM ; 
 struct nouveau_drm* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC2 (struct ttm_buffer_object*) ; 
 int FUNC3 (struct ttm_buffer_object*,int,int,int,struct ttm_mem_reg*) ; 
 int FUNC4 (struct ttm_buffer_object*,int,int,int,struct ttm_mem_reg*) ; 
 int FUNC5 (struct ttm_buffer_object*,int,int,int,struct ttm_mem_reg*) ; 
 int FUNC6 (struct ttm_buffer_object*,struct ttm_mem_reg*,struct nouveau_drm_tile**) ; 
 int /*<<< orphan*/  FUNC7 (struct ttm_buffer_object*,struct nouveau_drm_tile*,struct nouveau_drm_tile**) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ttm_buffer_object*,int,int,struct ttm_mem_reg*) ; 

__attribute__((used)) static int
FUNC10(struct ttm_buffer_object *bo, bool evict, bool intr,
		bool no_wait_gpu, struct ttm_mem_reg *new_mem)
{
	struct nouveau_drm *drm = FUNC1(bo->bdev);
	struct nouveau_bo *nvbo = FUNC2(bo);
	struct ttm_mem_reg *old_mem = &bo->mem;
	struct nouveau_drm_tile *new_tile = NULL;
	int ret = 0;

	if (FUNC8(drm->device)->card_type < NV_50) {
		ret = FUNC6(bo, new_mem, &new_tile);
		if (ret)
			return ret;
	}

	/* Fake bo copy. */
	if (old_mem->mem_type == TTM_PL_SYSTEM && !bo->ttm) {
		FUNC0(bo->mem.mm_node != NULL);
		bo->mem = *new_mem;
		new_mem->mm_node = NULL;
		goto out;
	}

	/* CPU copy if we have no accelerated method available */
	if (!drm->ttm.move) {
		ret = FUNC9(bo, evict, no_wait_gpu, new_mem);
		goto out;
	}

	/* Hardware assisted copy. */
	if (new_mem->mem_type == TTM_PL_SYSTEM)
		ret = FUNC3(bo, evict, intr,
					    no_wait_gpu, new_mem);
	else if (old_mem->mem_type == TTM_PL_SYSTEM)
		ret = FUNC4(bo, evict, intr,
					    no_wait_gpu, new_mem);
	else
		ret = FUNC5(bo, evict, intr,
					   no_wait_gpu, new_mem);

	if (!ret)
		goto out;

	/* Fallback to software copy. */
	ret = FUNC9(bo, evict, no_wait_gpu, new_mem);

out:
	if (FUNC8(drm->device)->card_type < NV_50) {
		if (ret)
			FUNC7(bo, NULL, &new_tile);
		else
			FUNC7(bo, new_tile, &nvbo->tile);
	}

	return ret;
}
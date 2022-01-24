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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ mem_type; scalar_t__ start; scalar_t__ num_pages; } ;
struct ttm_buffer_object {TYPE_1__ mem; int /*<<< orphan*/  bdev; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct nouveau_device {scalar_t__ card_type; int /*<<< orphan*/  pdev; } ;
struct TYPE_4__ {scalar_t__ lpfn; scalar_t__ fpfn; } ;
struct nouveau_bo {TYPE_2__ placement; } ;

/* Variables and functions */
 scalar_t__ NV_50 ; 
 scalar_t__ PAGE_SHIFT ; 
 int /*<<< orphan*/  TTM_PL_FLAG_VRAM ; 
 scalar_t__ TTM_PL_VRAM ; 
 struct nouveau_drm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC1 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bo*) ; 
 int FUNC4 (struct nouveau_bo*,int,int) ; 
 struct nouveau_device* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct ttm_buffer_object *bo)
{
	struct nouveau_drm *drm = FUNC0(bo->bdev);
	struct nouveau_bo *nvbo = FUNC1(bo);
	struct nouveau_device *device = FUNC5(drm->device);
	u32 mappable = FUNC6(device->pdev, 1) >> PAGE_SHIFT;

	/* as long as the bo isn't in vram, and isn't tiled, we've got
	 * nothing to do here.
	 */
	if (bo->mem.mem_type != TTM_PL_VRAM) {
		if (FUNC5(drm->device)->card_type < NV_50 ||
		    !FUNC3(nvbo))
			return 0;
	}

	/* make sure bo is in mappable vram */
	if (bo->mem.start + bo->mem.num_pages < mappable)
		return 0;


	nvbo->placement.fpfn = 0;
	nvbo->placement.lpfn = mappable;
	FUNC2(nvbo, TTM_PL_FLAG_VRAM, 0);
	return FUNC4(nvbo, false, false);
}
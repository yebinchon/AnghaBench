#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct ttm_mem_reg {int start; scalar_t__ mem_type; int /*<<< orphan*/  size; } ;
struct ttm_buffer_object {int /*<<< orphan*/  bdev; } ;
struct nouveau_drm_tile {int dummy; } ;
struct nouveau_drm {int /*<<< orphan*/  device; struct drm_device* dev; } ;
struct nouveau_bo {int /*<<< orphan*/  tile_flags; int /*<<< orphan*/  tile_mode; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;

/* Variables and functions */
 scalar_t__ NV_10 ; 
 int PAGE_SHIFT ; 
 scalar_t__ TTM_PL_VRAM ; 
 struct nouveau_drm* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC1 (struct ttm_buffer_object*) ; 
 struct nouveau_drm_tile* FUNC2 (struct drm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ttm_buffer_object *bo, struct ttm_mem_reg *new_mem,
		   struct nouveau_drm_tile **new_tile)
{
	struct nouveau_drm *drm = FUNC0(bo->bdev);
	struct drm_device *dev = drm->dev;
	struct nouveau_bo *nvbo = FUNC1(bo);
	u64 offset = new_mem->start << PAGE_SHIFT;

	*new_tile = NULL;
	if (new_mem->mem_type != TTM_PL_VRAM)
		return 0;

	if (FUNC3(drm->device)->card_type >= NV_10) {
		*new_tile = FUNC2(dev, offset, new_mem->size,
						nvbo->tile_mode,
						nvbo->tile_flags);
	}

	return 0;
}
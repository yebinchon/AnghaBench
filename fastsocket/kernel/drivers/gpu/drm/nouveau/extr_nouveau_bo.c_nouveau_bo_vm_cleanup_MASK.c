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
struct ttm_buffer_object {int /*<<< orphan*/  sync_obj; int /*<<< orphan*/  bdev; } ;
struct nouveau_drm_tile {int dummy; } ;
struct nouveau_drm {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_drm* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct nouveau_drm_tile*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ttm_buffer_object *bo,
		      struct nouveau_drm_tile *new_tile,
		      struct nouveau_drm_tile **old_tile)
{
	struct nouveau_drm *drm = FUNC0(bo->bdev);
	struct drm_device *dev = drm->dev;

	FUNC1(dev, *old_tile, bo->sync_obj);
	*old_tile = new_tile;
}
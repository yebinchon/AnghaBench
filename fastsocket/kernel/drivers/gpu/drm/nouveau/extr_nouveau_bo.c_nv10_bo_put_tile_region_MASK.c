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
struct nouveau_fence {int dummy; } ;
struct nouveau_drm_tile {int used; struct nouveau_fence* fence; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct nouveau_drm {TYPE_1__ tile; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_drm* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_fence*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct drm_device *dev, struct nouveau_drm_tile *tile,
			struct nouveau_fence *fence)
{
	struct nouveau_drm *drm = FUNC0(dev);

	if (tile) {
		FUNC2(&drm->tile.lock);
		if (fence) {
			/* Mark it as pending. */
			tile->fence = fence;
			FUNC1(fence);
		}

		tile->used = false;
		FUNC3(&drm->tile.lock);
	}
}
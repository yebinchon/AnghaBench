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
struct TYPE_4__ {int regions; TYPE_1__* region; } ;
struct nouveau_fb {TYPE_2__ tile; } ;
struct nouveau_drm_tile {int dummy; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ pitch; } ;

/* Variables and functions */
 struct nouveau_drm* FUNC0 (struct drm_device*) ; 
 struct nouveau_fb* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nouveau_drm_tile* FUNC2 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct nouveau_drm_tile*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct nouveau_drm_tile*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct nouveau_drm_tile *
FUNC5(struct drm_device *dev, u32 addr,
		   u32 size, u32 pitch, u32 flags)
{
	struct nouveau_drm *drm = FUNC0(dev);
	struct nouveau_fb *pfb = FUNC1(drm->device);
	struct nouveau_drm_tile *tile, *found = NULL;
	int i;

	for (i = 0; i < pfb->tile.regions; i++) {
		tile = FUNC2(dev, i);

		if (pitch && !found) {
			found = tile;
			continue;

		} else if (tile && pfb->tile.region[i].pitch) {
			/* Kill an unused tile region. */
			FUNC4(dev, tile, 0, 0, 0, 0);
		}

		FUNC3(dev, tile, NULL);
	}

	if (found)
		FUNC4(dev, found, addr, size,
					    pitch, flags);
	return found;
}
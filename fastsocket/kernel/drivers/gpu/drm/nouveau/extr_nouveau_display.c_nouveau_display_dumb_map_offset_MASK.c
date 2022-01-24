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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  addr_space_offset; } ;
struct nouveau_bo {TYPE_1__ bo; } ;
struct drm_gem_object {struct nouveau_bo* driver_private; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct drm_gem_object* FUNC0 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 

int
FUNC2(struct drm_file *file_priv,
				struct drm_device *dev,
				uint32_t handle, uint64_t *poffset)
{
	struct drm_gem_object *gem;

	gem = FUNC0(dev, file_priv, handle);
	if (gem) {
		struct nouveau_bo *bo = gem->driver_private;
		*poffset = bo->bo.addr_space_offset;
		FUNC1(gem);
		return 0;
	}

	return -ENOENT;
}
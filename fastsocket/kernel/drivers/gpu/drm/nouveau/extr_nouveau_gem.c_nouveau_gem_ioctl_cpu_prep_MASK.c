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
struct TYPE_4__ {TYPE_1__* bdev; } ;
struct nouveau_bo {TYPE_2__ bo; } ;
struct drm_nouveau_gem_cpu_prep {int flags; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  fence_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int NOUVEAU_GEM_CPU_PREP_NOWAIT ; 
 struct drm_gem_object* FUNC0 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 struct nouveau_bo* FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,int,int,int) ; 

int
FUNC6(struct drm_device *dev, void *data,
			   struct drm_file *file_priv)
{
	struct drm_nouveau_gem_cpu_prep *req = data;
	struct drm_gem_object *gem;
	struct nouveau_bo *nvbo;
	bool no_wait = !!(req->flags & NOUVEAU_GEM_CPU_PREP_NOWAIT);
	int ret = -EINVAL;

	gem = FUNC0(dev, file_priv, req->handle);
	if (!gem)
		return -ENOENT;
	nvbo = FUNC2(gem);

	FUNC3(&nvbo->bo.bdev->fence_lock);
	ret = FUNC5(&nvbo->bo, true, true, no_wait);
	FUNC4(&nvbo->bo.bdev->fence_lock);
	FUNC1(gem);
	return ret;
}
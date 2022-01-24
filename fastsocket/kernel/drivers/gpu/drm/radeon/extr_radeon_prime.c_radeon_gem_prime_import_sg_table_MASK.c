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
struct sg_table {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  objects; } ;
struct radeon_device {TYPE_1__ gem; } ;
struct drm_gem_object {struct radeon_bo* driver_private; } ;
struct radeon_bo {struct drm_gem_object gem_base; int /*<<< orphan*/  list; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct radeon_device*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sg_table*,struct radeon_bo**) ; 

struct drm_gem_object *FUNC5(struct drm_device *dev,
							size_t size,
							struct sg_table *sg)
{
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_bo *bo;
	int ret;

	ret = FUNC4(rdev, size, PAGE_SIZE, false,
			       RADEON_GEM_DOMAIN_GTT, sg, &bo);
	if (ret)
		return FUNC0(ret);
	bo->gem_base.driver_private = bo;

	FUNC2(&rdev->gem.mutex);
	FUNC1(&bo->list, &rdev->gem.objects);
	FUNC3(&rdev->gem.mutex);

	return &bo->gem_base;
}
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
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_device {int /*<<< orphan*/  exclusive_lock; } ;
struct drm_radeon_gem_create {int /*<<< orphan*/  handle; int /*<<< orphan*/  initial_domain; int /*<<< orphan*/  alignment; int /*<<< orphan*/  size; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct radeon_device*,int) ; 
 int FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct drm_gem_object**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct drm_device *dev, void *data,
			    struct drm_file *filp)
{
	struct radeon_device *rdev = dev->dev_private;
	struct drm_radeon_gem_create *args = data;
	struct drm_gem_object *gobj;
	uint32_t handle;
	int r;

	FUNC0(&rdev->exclusive_lock);
	/* create a gem object to contain this object in */
	args->size = FUNC5(args->size, PAGE_SIZE);
	r = FUNC4(rdev, args->size, args->alignment,
					args->initial_domain, false,
					false, &gobj);
	if (r) {
		FUNC6(&rdev->exclusive_lock);
		r = FUNC3(rdev, r);
		return r;
	}
	r = FUNC1(filp, gobj, &handle);
	/* drop reference from allocate - handle holds it now */
	FUNC2(gobj);
	if (r) {
		FUNC6(&rdev->exclusive_lock);
		r = FUNC3(rdev, r);
		return r;
	}
	args->handle = handle;
	FUNC6(&rdev->exclusive_lock);
	return 0;
}
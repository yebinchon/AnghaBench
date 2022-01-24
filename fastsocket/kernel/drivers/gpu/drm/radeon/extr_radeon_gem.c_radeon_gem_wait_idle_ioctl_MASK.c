#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct radeon_device {TYPE_1__* asic; } ;
struct radeon_bo {TYPE_3__* rdev; } ;
struct drm_radeon_gem_wait_idle {int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_6__ {TYPE_2__* asic; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* ioctl_wait_idle ) (struct radeon_device*,struct radeon_bo*) ;} ;
struct TYPE_4__ {scalar_t__ ioctl_wait_idle; } ;

/* Variables and functions */
 int ENOENT ; 
 struct drm_gem_object* FUNC0 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct radeon_bo*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_bo*) ; 

int FUNC6(struct drm_device *dev, void *data,
			      struct drm_file *filp)
{
	struct radeon_device *rdev = dev->dev_private;
	struct drm_radeon_gem_wait_idle *args = data;
	struct drm_gem_object *gobj;
	struct radeon_bo *robj;
	int r;

	gobj = FUNC0(dev, filp, args->handle);
	if (gobj == NULL) {
		return -ENOENT;
	}
	robj = FUNC2(gobj);
	r = FUNC3(robj, NULL, false);
	/* callback hw specific functions if any */
	if (rdev->asic->ioctl_wait_idle)
		robj->rdev->asic->ioctl_wait_idle(rdev, robj);
	FUNC1(gobj);
	r = FUNC4(rdev, r);
	return r;
}
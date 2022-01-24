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
struct radeon_device {int /*<<< orphan*/  exclusive_lock; } ;
struct radeon_bo {int /*<<< orphan*/  rdev; } ;
struct drm_radeon_gem_set_domain {int /*<<< orphan*/  write_domain; int /*<<< orphan*/  read_domains; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct drm_gem_object* FUNC1 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC3 (struct drm_gem_object*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct drm_gem_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct drm_device *dev, void *data,
				struct drm_file *filp)
{
	/* transition the BO to a domain -
	 * just validate the BO into a certain domain */
	struct radeon_device *rdev = dev->dev_private;
	struct drm_radeon_gem_set_domain *args = data;
	struct drm_gem_object *gobj;
	struct radeon_bo *robj;
	int r;

	/* for now if someone requests domain CPU -
	 * just make sure the buffer is finished with */
	FUNC0(&rdev->exclusive_lock);

	/* just do a BO wait for now */
	gobj = FUNC1(dev, filp, args->handle);
	if (gobj == NULL) {
		FUNC6(&rdev->exclusive_lock);
		return -ENOENT;
	}
	robj = FUNC3(gobj);

	r = FUNC5(gobj, args->read_domains, args->write_domain);

	FUNC2(gobj);
	FUNC6(&rdev->exclusive_lock);
	r = FUNC4(robj->rdev, r);
	return r;
}
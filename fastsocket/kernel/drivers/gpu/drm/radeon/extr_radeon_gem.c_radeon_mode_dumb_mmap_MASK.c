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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct drm_gem_object* FUNC0 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_bo*) ; 

int FUNC4(struct drm_file *filp,
			  struct drm_device *dev,
			  uint32_t handle, uint64_t *offset_p)
{
	struct drm_gem_object *gobj;
	struct radeon_bo *robj;

	gobj = FUNC0(dev, filp, handle);
	if (gobj == NULL) {
		return -ENOENT;
	}
	robj = FUNC2(gobj);
	*offset_p = FUNC3(robj);
	FUNC1(gobj);
	return 0;
}
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
struct radeon_bo {int dummy; } ;
struct drm_radeon_gem_get_tiling {int /*<<< orphan*/  pitch; int /*<<< orphan*/  tiling_flags; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOENT ; 
 struct drm_gem_object* FUNC1 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_bo*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_bo*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct drm_device *dev, void *data,
				struct drm_file *filp)
{
	struct drm_radeon_gem_get_tiling *args = data;
	struct drm_gem_object *gobj;
	struct radeon_bo *rbo;
	int r = 0;

	FUNC0("\n");
	gobj = FUNC1(dev, filp, args->handle);
	if (gobj == NULL)
		return -ENOENT;
	rbo = FUNC3(gobj);
	r = FUNC5(rbo, false);
	if (FUNC7(r != 0))
		goto out;
	FUNC4(rbo, &args->tiling_flags, &args->pitch);
	FUNC6(rbo);
out:
	FUNC2(gobj);
	return r;
}
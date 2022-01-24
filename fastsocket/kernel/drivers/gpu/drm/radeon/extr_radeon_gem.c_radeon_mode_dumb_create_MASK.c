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
struct radeon_device {int dummy; } ;
struct drm_mode_create_dumb {int pitch; int bpp; int size; int height; int /*<<< orphan*/  handle; int /*<<< orphan*/  width; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int FUNC1 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct radeon_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct drm_gem_object**) ; 
 int /*<<< orphan*/  ttm_bo_type_device ; 

int FUNC5(struct drm_file *file_priv,
			    struct drm_device *dev,
			    struct drm_mode_create_dumb *args)
{
	struct radeon_device *rdev = dev->dev_private;
	struct drm_gem_object *gobj;
	uint32_t handle;
	int r;

	args->pitch = FUNC3(rdev, args->width, args->bpp, 0) * ((args->bpp + 1) / 8);
	args->size = args->pitch * args->height;
	args->size = FUNC0(args->size, PAGE_SIZE);

	r = FUNC4(rdev, args->size, 0,
				     RADEON_GEM_DOMAIN_VRAM,
				     false, ttm_bo_type_device,
				     &gobj);
	if (r)
		return -ENOMEM;

	r = FUNC1(file_priv, gobj, &handle);
	/* drop reference from allocate - handle holds it now */
	FUNC2(gobj);
	if (r) {
		return r;
	}
	args->handle = handle;
	return 0;
}
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
typedef  int uint32_t ;
struct radeon_device {int dummy; } ;
struct radeon_bo {int dummy; } ;
struct drm_radeon_gem_busy {int /*<<< orphan*/  domain; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_CPU ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
#define  TTM_PL_SYSTEM 130 
#define  TTM_PL_TT 129 
#define  TTM_PL_VRAM 128 
 struct drm_gem_object* FUNC0 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct radeon_bo*,int*,int) ; 
 int FUNC4 (struct radeon_device*,int) ; 

int FUNC5(struct drm_device *dev, void *data,
			  struct drm_file *filp)
{
	struct radeon_device *rdev = dev->dev_private;
	struct drm_radeon_gem_busy *args = data;
	struct drm_gem_object *gobj;
	struct radeon_bo *robj;
	int r;
	uint32_t cur_placement = 0;

	gobj = FUNC0(dev, filp, args->handle);
	if (gobj == NULL) {
		return -ENOENT;
	}
	robj = FUNC2(gobj);
	r = FUNC3(robj, &cur_placement, true);
	switch (cur_placement) {
	case TTM_PL_VRAM:
		args->domain = RADEON_GEM_DOMAIN_VRAM;
		break;
	case TTM_PL_TT:
		args->domain = RADEON_GEM_DOMAIN_GTT;
		break;
	case TTM_PL_SYSTEM:
		args->domain = RADEON_GEM_DOMAIN_CPU;
	default:
		break;
	}
	FUNC1(gobj);
	r = FUNC4(rdev, r);
	return r;
}
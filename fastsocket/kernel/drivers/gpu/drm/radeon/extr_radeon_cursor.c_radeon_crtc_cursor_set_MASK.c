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
typedef  scalar_t__ uint32_t ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {scalar_t__ crtc_id; struct drm_gem_object* cursor_bo; scalar_t__ cursor_height; scalar_t__ cursor_width; } ;
struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ CURSOR_HEIGHT ; 
 scalar_t__ CURSOR_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 struct drm_gem_object* FUNC2 (TYPE_1__*,struct drm_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC4 (struct drm_gem_object*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct radeon_bo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_crtc*,struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_crtc*) ; 
 struct radeon_crtc* FUNC14 (struct drm_crtc*) ; 
 scalar_t__ FUNC15 (int) ; 

int FUNC16(struct drm_crtc *crtc,
			   struct drm_file *file_priv,
			   uint32_t handle,
			   uint32_t width,
			   uint32_t height)
{
	struct radeon_crtc *radeon_crtc = FUNC14(crtc);
	struct radeon_device *rdev = crtc->dev->dev_private;
	struct drm_gem_object *obj;
	struct radeon_bo *robj;
	uint64_t gpu_addr;
	int ret;

	if (!handle) {
		/* turn off cursor */
		FUNC10(crtc);
		obj = NULL;
		goto unpin;
	}

	if ((width > CURSOR_WIDTH) || (height > CURSOR_HEIGHT)) {
		FUNC1("bad cursor width or height %d x %d\n", width, height);
		return -EINVAL;
	}

	obj = FUNC2(crtc->dev, file_priv, handle);
	if (!obj) {
		FUNC1("Cannot find cursor object %x for crtc %d\n", handle, radeon_crtc->crtc_id);
		return -ENOENT;
	}

	robj = FUNC4(obj);
	ret = FUNC7(robj, false);
	if (FUNC15(ret != 0))
		goto fail;
	/* Only 27 bit offset for legacy cursor */
	ret = FUNC6(robj, RADEON_GEM_DOMAIN_VRAM,
				       FUNC0(rdev) ? 0 : 1 << 27,
				       &gpu_addr);
	FUNC9(robj);
	if (ret)
		goto fail;

	radeon_crtc->cursor_width = width;
	radeon_crtc->cursor_height = height;

	FUNC11(crtc, true);
	FUNC12(crtc, obj, gpu_addr);
	FUNC13(crtc);
	FUNC11(crtc, false);

unpin:
	if (radeon_crtc->cursor_bo) {
		robj = FUNC4(radeon_crtc->cursor_bo);
		ret = FUNC7(robj, false);
		if (FUNC5(ret == 0)) {
			FUNC8(robj);
			FUNC9(robj);
		}
		FUNC3(radeon_crtc->cursor_bo);
	}

	radeon_crtc->cursor_bo = obj;
	return 0;
fail:
	FUNC3(obj);

	return ret;
}
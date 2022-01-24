#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct intel_crtc {scalar_t__ pipe; int cursor_addr; int cursor_width; int cursor_height; struct drm_i915_gem_object* cursor_bo; } ;
struct drm_i915_private {TYPE_3__* info; } ;
struct TYPE_9__ {int size; } ;
struct drm_i915_gem_object {int gtt_offset; TYPE_4__ base; TYPE_2__* phys_obj; scalar_t__ tiling_mode; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_8__ {scalar_t__ cursor_needs_physical; } ;
struct TYPE_7__ {TYPE_1__* handle; } ;
struct TYPE_6__ {int busaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  I915_GEM_PHYS_CURSOR_0 ; 
 int /*<<< orphan*/  I915_GEM_PHYS_CURSOR_1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct drm_device*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_file*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int FUNC8 (struct drm_device*,struct drm_i915_gem_object*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,struct drm_i915_gem_object*) ; 
 int FUNC10 (struct drm_i915_gem_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_crtc*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct drm_i915_gem_object* FUNC16 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC17 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC18(struct drm_crtc *crtc,
				 struct drm_file *file,
				 uint32_t handle,
				 uint32_t width, uint32_t height)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC17(crtc);
	struct drm_i915_gem_object *obj;
	uint32_t addr;
	int ret;

	/* if we want to turn off the cursor ignore width and height */
	if (!handle) {
		FUNC0("cursor off\n");
		addr = 0;
		obj = NULL;
		FUNC14(&dev->struct_mutex);
		goto finish;
	}

	/* Currently we only support 64x64 cursors */
	if (width != 64 || height != 64) {
		FUNC1("we currently only support 64x64 cursors\n");
		return -EINVAL;
	}

	obj = FUNC16(FUNC5(dev, file, handle));
	if (&obj->base == NULL)
		return -ENOENT;

	if (obj->base.size < width * height * 4) {
		FUNC1("buffer is to small\n");
		ret = -ENOMEM;
		goto fail;
	}

	/* we only need to pin inside GTT if cursor is non-phy */
	FUNC14(&dev->struct_mutex);
	if (!dev_priv->info->cursor_needs_physical) {
		if (obj->tiling_mode) {
			FUNC1("cursor cannot be tiled\n");
			ret = -EINVAL;
			goto fail_locked;
		}

		ret = FUNC10(obj, 0, NULL);
		if (ret) {
			FUNC1("failed to move cursor bo into the GTT\n");
			goto fail_locked;
		}

		ret = FUNC11(obj);
		if (ret) {
			FUNC1("failed to release fence for cursor");
			goto fail_unpin;
		}

		addr = obj->gtt_offset;
	} else {
		int align = FUNC4(dev) ? 16 * 1024 : 256;
		ret = FUNC8(dev, obj,
						  (intel_crtc->pipe == 0) ? I915_GEM_PHYS_CURSOR_0 : I915_GEM_PHYS_CURSOR_1,
						  align);
		if (ret) {
			FUNC1("failed to attach phys object\n");
			goto fail_locked;
		}
		addr = obj->phys_obj->handle->busaddr;
	}

	if (FUNC3(dev))
		FUNC2(CURSIZE, (height << 12) | width);

 finish:
	if (intel_crtc->cursor_bo) {
		if (dev_priv->info->cursor_needs_physical) {
			if (intel_crtc->cursor_bo != obj)
				FUNC9(dev, intel_crtc->cursor_bo);
		} else
			FUNC12(intel_crtc->cursor_bo);
		FUNC6(&intel_crtc->cursor_bo->base);
	}

	FUNC15(&dev->struct_mutex);

	intel_crtc->cursor_addr = addr;
	intel_crtc->cursor_bo = obj;
	intel_crtc->cursor_width = width;
	intel_crtc->cursor_height = height;

	FUNC13(crtc, true);

	return 0;
fail_unpin:
	FUNC12(obj);
fail_locked:
	FUNC15(&dev->struct_mutex);
fail:
	FUNC7(&obj->base);
	return ret;
}
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
typedef  int uint32_t ;
struct intel_plane {int pipe; int max_downscale; int /*<<< orphan*/  (* update_plane ) (struct drm_plane*,struct drm_framebuffer*,struct drm_i915_gem_object*,int,int,unsigned int,unsigned int,int,int,int,int) ;struct drm_i915_gem_object* obj; int /*<<< orphan*/  can_scale; } ;
struct intel_framebuffer {struct drm_i915_gem_object* obj; } ;
struct intel_crtc {int pipe; } ;
struct drm_plane {struct drm_device* dev; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int tiling_mode; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int hdisplay; int vdisplay; } ;
struct drm_crtc {TYPE_1__ mode; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  I915_TILING_NONE 129 
#define  I915_TILING_X 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PIPECONF_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int FUNC4 (struct drm_device*,struct drm_i915_gem_object*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_plane*,struct drm_framebuffer*,struct drm_i915_gem_object*,int,int,unsigned int,unsigned int,int,int,int,int) ; 
 struct intel_crtc* FUNC11 (struct drm_crtc*) ; 
 struct intel_framebuffer* FUNC12 (struct drm_framebuffer*) ; 
 struct intel_plane* FUNC13 (struct drm_plane*) ; 

__attribute__((used)) static int
FUNC14(struct drm_plane *plane, struct drm_crtc *crtc,
		   struct drm_framebuffer *fb, int crtc_x, int crtc_y,
		   unsigned int crtc_w, unsigned int crtc_h,
		   uint32_t src_x, uint32_t src_y,
		   uint32_t src_w, uint32_t src_h)
{
	struct drm_device *dev = plane->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC11(crtc);
	struct intel_plane *intel_plane = FUNC13(plane);
	struct intel_framebuffer *intel_fb;
	struct drm_i915_gem_object *obj, *old_obj;
	int pipe = intel_plane->pipe;
	enum transcoder cpu_transcoder = FUNC5(dev_priv,
								      pipe);
	int ret = 0;
	int x = src_x >> 16, y = src_y >> 16;
	int primary_w = crtc->mode.hdisplay, primary_h = crtc->mode.vdisplay;
	bool disable_primary = false;

	intel_fb = FUNC12(fb);
	obj = intel_fb->obj;

	old_obj = intel_plane->obj;

	src_w = src_w >> 16;
	src_h = src_h >> 16;

	/* Pipe must be running... */
	if (!(FUNC0(FUNC1(cpu_transcoder)) & PIPECONF_ENABLE))
		return -EINVAL;

	if (crtc_x >= primary_w || crtc_y >= primary_h)
		return -EINVAL;

	/* Don't modify another pipe's plane */
	if (intel_plane->pipe != intel_crtc->pipe)
		return -EINVAL;

	/* Sprite planes can be linear or x-tiled surfaces */
	switch (obj->tiling_mode) {
		case I915_TILING_NONE:
		case I915_TILING_X:
			break;
		default:
			return -EINVAL;
	}

	/*
	 * Clamp the width & height into the visible area.  Note we don't
	 * try to scale the source if part of the visible region is offscreen.
	 * The caller must handle that by adjusting source offset and size.
	 */
	if ((crtc_x < 0) && ((crtc_x + crtc_w) > 0)) {
		crtc_w += crtc_x;
		crtc_x = 0;
	}
	if ((crtc_x + crtc_w) <= 0) /* Nothing to display */
		goto out;
	if ((crtc_x + crtc_w) > primary_w)
		crtc_w = primary_w - crtc_x;

	if ((crtc_y < 0) && ((crtc_y + crtc_h) > 0)) {
		crtc_h += crtc_y;
		crtc_y = 0;
	}
	if ((crtc_y + crtc_h) <= 0) /* Nothing to display */
		goto out;
	if (crtc_y + crtc_h > primary_h)
		crtc_h = primary_h - crtc_y;

	if (!crtc_w || !crtc_h) /* Again, nothing to display */
		goto out;

	/*
	 * We may not have a scaler, eg. HSW does not have it any more
	 */
	if (!intel_plane->can_scale && (crtc_w != src_w || crtc_h != src_h))
		return -EINVAL;

	/*
	 * We can take a larger source and scale it down, but
	 * only so much...  16x is the max on SNB.
	 */
	if (((src_w * src_h) / (crtc_w * crtc_h)) > intel_plane->max_downscale)
		return -EINVAL;

	/*
	 * If the sprite is completely covering the primary plane,
	 * we can disable the primary and save power.
	 */
	if ((crtc_x == 0) && (crtc_y == 0) &&
	    (crtc_w == primary_w) && (crtc_h == primary_h))
		disable_primary = true;

	FUNC8(&dev->struct_mutex);

	ret = FUNC4(dev, obj, NULL);
	if (ret)
		goto out_unlock;

	intel_plane->obj = obj;

	/*
	 * Be sure to re-enable the primary before the sprite is no longer
	 * covering it fully.
	 */
	if (!disable_primary)
		FUNC3(crtc);

	intel_plane->update_plane(plane, fb, obj, crtc_x, crtc_y,
				  crtc_w, crtc_h, x, y, src_w, src_h);

	if (disable_primary)
		FUNC2(crtc);

	/* Unpin old obj after new one is active to avoid ugliness */
	if (old_obj) {
		/*
		 * It's fairly common to simply update the position of
		 * an existing object.  In that case, we don't need to
		 * wait for vblank to avoid ugliness, we only need to
		 * do the pin & ref bookkeeping.
		 */
		if (old_obj != obj) {
			FUNC9(&dev->struct_mutex);
			FUNC7(dev, FUNC11(crtc)->pipe);
			FUNC8(&dev->struct_mutex);
		}
		FUNC6(old_obj);
	}

out_unlock:
	FUNC9(&dev->struct_mutex);
out:
	return ret;
}
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
struct intel_ring_buffer {int dummy; } ;
struct intel_crtc {int dspaddr_offset; int /*<<< orphan*/  pipe; int /*<<< orphan*/  plane; } ;
struct drm_i915_private {struct intel_ring_buffer* ring; } ;
struct drm_i915_gem_object {int gtt_offset; int tiling_mode; } ;
struct drm_framebuffer {int* pitches; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MI_DISPLAY_FLIP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t RCS ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc*) ; 
 int FUNC4 (struct drm_device*,struct drm_i915_gem_object*,struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_ring_buffer*) ; 
 int FUNC6 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_gem_object*) ; 
 struct intel_crtc* FUNC9 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC10(struct drm_device *dev,
				 struct drm_crtc *crtc,
				 struct drm_framebuffer *fb,
				 struct drm_i915_gem_object *obj)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC9(crtc);
	uint32_t pf, pipesrc;
	struct intel_ring_buffer *ring = &dev_priv->ring[RCS];
	int ret;

	ret = FUNC4(dev, obj, ring);
	if (ret)
		goto err;

	ret = FUNC6(ring, 4);
	if (ret)
		goto err_unpin;

	/* i965+ uses the linear or tiled offsets from the
	 * Display Registers (which do not change across a page-flip)
	 * so we need only reprogram the base address.
	 */
	FUNC7(ring, MI_DISPLAY_FLIP |
			FUNC1(intel_crtc->plane));
	FUNC7(ring, fb->pitches[0]);
	FUNC7(ring,
			(obj->gtt_offset + intel_crtc->dspaddr_offset) |
			obj->tiling_mode);

	/* XXX Enabling the panel-fitter across page-flip is so far
	 * untested on non-native modes, so ignore it for now.
	 * pf = I915_READ(pipe == 0 ? PFA_CTL_1 : PFB_CTL_1) & PF_ENABLE;
	 */
	pf = 0;
	pipesrc = FUNC0(FUNC2(intel_crtc->pipe)) & 0x0fff0fff;
	FUNC7(ring, pf | pipesrc);

	FUNC3(intel_crtc);
	FUNC5(ring);
	return 0;

err_unpin:
	FUNC8(obj);
err:
	return ret;
}
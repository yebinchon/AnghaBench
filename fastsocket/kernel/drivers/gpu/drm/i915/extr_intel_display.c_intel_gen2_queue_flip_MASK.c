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
typedef  int u32 ;
struct intel_ring_buffer {int dummy; } ;
struct intel_crtc {int dspaddr_offset; scalar_t__ plane; } ;
struct drm_i915_private {struct intel_ring_buffer* ring; } ;
struct drm_i915_gem_object {int gtt_offset; } ;
struct drm_framebuffer {int* pitches; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int MI_DISPLAY_FLIP ; 
 int FUNC0 (scalar_t__) ; 
 int MI_NOOP ; 
 int MI_WAIT_FOR_EVENT ; 
 int MI_WAIT_FOR_PLANE_A_FLIP ; 
 int MI_WAIT_FOR_PLANE_B_FLIP ; 
 size_t RCS ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc*) ; 
 int FUNC2 (struct drm_device*,struct drm_i915_gem_object*,struct intel_ring_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_ring_buffer*) ; 
 int FUNC4 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_gem_object*) ; 
 struct intel_crtc* FUNC7 (struct drm_crtc*) ; 

__attribute__((used)) static int FUNC8(struct drm_device *dev,
				 struct drm_crtc *crtc,
				 struct drm_framebuffer *fb,
				 struct drm_i915_gem_object *obj)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC7(crtc);
	u32 flip_mask;
	struct intel_ring_buffer *ring = &dev_priv->ring[RCS];
	int ret;

	ret = FUNC2(dev, obj, ring);
	if (ret)
		goto err;

	ret = FUNC4(ring, 6);
	if (ret)
		goto err_unpin;

	/* Can't queue multiple flips, so wait for the previous
	 * one to finish before executing the next.
	 */
	if (intel_crtc->plane)
		flip_mask = MI_WAIT_FOR_PLANE_B_FLIP;
	else
		flip_mask = MI_WAIT_FOR_PLANE_A_FLIP;
	FUNC5(ring, MI_WAIT_FOR_EVENT | flip_mask);
	FUNC5(ring, MI_NOOP);
	FUNC5(ring, MI_DISPLAY_FLIP |
			FUNC0(intel_crtc->plane));
	FUNC5(ring, fb->pitches[0]);
	FUNC5(ring, obj->gtt_offset + intel_crtc->dspaddr_offset);
	FUNC5(ring, 0); /* aux display base address, unused */

	FUNC1(intel_crtc);
	FUNC3(ring);
	return 0;

err_unpin:
	FUNC6(obj);
err:
	return ret;
}
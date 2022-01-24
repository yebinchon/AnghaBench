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
struct intel_crtc {int plane; int dspaddr_offset; } ;
struct drm_i915_private {struct intel_ring_buffer* ring; } ;
struct drm_i915_gem_object {int tiling_mode; int gtt_offset; } ;
struct drm_framebuffer {int* pitches; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 size_t BCS ; 
 int ENODEV ; 
 int MI_DISPLAY_FLIP_I915 ; 
 int MI_DISPLAY_FLIP_IVB_PLANE_A ; 
 int MI_DISPLAY_FLIP_IVB_PLANE_B ; 
 int MI_DISPLAY_FLIP_IVB_PLANE_C ; 
 int MI_NOOP ; 
#define  PLANE_A 130 
#define  PLANE_B 129 
#define  PLANE_C 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
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
	struct intel_ring_buffer *ring = &dev_priv->ring[BCS];
	uint32_t plane_bit = 0;
	int ret;

	ret = FUNC2(dev, obj, ring);
	if (ret)
		goto err;

	switch(intel_crtc->plane) {
	case PLANE_A:
		plane_bit = MI_DISPLAY_FLIP_IVB_PLANE_A;
		break;
	case PLANE_B:
		plane_bit = MI_DISPLAY_FLIP_IVB_PLANE_B;
		break;
	case PLANE_C:
		plane_bit = MI_DISPLAY_FLIP_IVB_PLANE_C;
		break;
	default:
		FUNC0(1, "unknown plane in flip command\n");
		ret = -ENODEV;
		goto err_unpin;
	}

	ret = FUNC4(ring, 4);
	if (ret)
		goto err_unpin;

	FUNC5(ring, MI_DISPLAY_FLIP_I915 | plane_bit);
	FUNC5(ring, (fb->pitches[0] | obj->tiling_mode));
	FUNC5(ring, obj->gtt_offset + intel_crtc->dspaddr_offset);
	FUNC5(ring, (MI_NOOP));

	FUNC1(intel_crtc);
	FUNC3(ring);
	return 0;

err_unpin:
	FUNC6(obj);
err:
	return ret;
}
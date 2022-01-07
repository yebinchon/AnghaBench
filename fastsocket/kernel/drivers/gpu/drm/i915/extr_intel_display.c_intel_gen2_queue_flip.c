
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {int dummy; } ;
struct intel_crtc {int dspaddr_offset; scalar_t__ plane; } ;
struct drm_i915_private {struct intel_ring_buffer* ring; } ;
struct drm_i915_gem_object {int gtt_offset; } ;
struct drm_framebuffer {int* pitches; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;


 int MI_DISPLAY_FLIP ;
 int MI_DISPLAY_FLIP_PLANE (scalar_t__) ;
 int MI_NOOP ;
 int MI_WAIT_FOR_EVENT ;
 int MI_WAIT_FOR_PLANE_A_FLIP ;
 int MI_WAIT_FOR_PLANE_B_FLIP ;
 size_t RCS ;
 int intel_mark_page_flip_active (struct intel_crtc*) ;
 int intel_pin_and_fence_fb_obj (struct drm_device*,struct drm_i915_gem_object*,struct intel_ring_buffer*) ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int) ;
 int intel_unpin_fb_obj (struct drm_i915_gem_object*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static int intel_gen2_queue_flip(struct drm_device *dev,
     struct drm_crtc *crtc,
     struct drm_framebuffer *fb,
     struct drm_i915_gem_object *obj)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 u32 flip_mask;
 struct intel_ring_buffer *ring = &dev_priv->ring[RCS];
 int ret;

 ret = intel_pin_and_fence_fb_obj(dev, obj, ring);
 if (ret)
  goto err;

 ret = intel_ring_begin(ring, 6);
 if (ret)
  goto err_unpin;




 if (intel_crtc->plane)
  flip_mask = MI_WAIT_FOR_PLANE_B_FLIP;
 else
  flip_mask = MI_WAIT_FOR_PLANE_A_FLIP;
 intel_ring_emit(ring, MI_WAIT_FOR_EVENT | flip_mask);
 intel_ring_emit(ring, MI_NOOP);
 intel_ring_emit(ring, MI_DISPLAY_FLIP |
   MI_DISPLAY_FLIP_PLANE(intel_crtc->plane));
 intel_ring_emit(ring, fb->pitches[0]);
 intel_ring_emit(ring, obj->gtt_offset + intel_crtc->dspaddr_offset);
 intel_ring_emit(ring, 0);

 intel_mark_page_flip_active(intel_crtc);
 intel_ring_advance(ring);
 return 0;

err_unpin:
 intel_unpin_fb_obj(obj);
err:
 return ret;
}

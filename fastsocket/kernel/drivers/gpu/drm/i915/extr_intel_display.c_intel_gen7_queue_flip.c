
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct intel_ring_buffer {int dummy; } ;
struct intel_crtc {int plane; int dspaddr_offset; } ;
struct drm_i915_private {struct intel_ring_buffer* ring; } ;
struct drm_i915_gem_object {int tiling_mode; int gtt_offset; } ;
struct drm_framebuffer {int* pitches; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;


 size_t BCS ;
 int ENODEV ;
 int MI_DISPLAY_FLIP_I915 ;
 int MI_DISPLAY_FLIP_IVB_PLANE_A ;
 int MI_DISPLAY_FLIP_IVB_PLANE_B ;
 int MI_DISPLAY_FLIP_IVB_PLANE_C ;
 int MI_NOOP ;



 int WARN_ONCE (int,char*) ;
 int intel_mark_page_flip_active (struct intel_crtc*) ;
 int intel_pin_and_fence_fb_obj (struct drm_device*,struct drm_i915_gem_object*,struct intel_ring_buffer*) ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int) ;
 int intel_unpin_fb_obj (struct drm_i915_gem_object*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static int intel_gen7_queue_flip(struct drm_device *dev,
     struct drm_crtc *crtc,
     struct drm_framebuffer *fb,
     struct drm_i915_gem_object *obj)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 struct intel_ring_buffer *ring = &dev_priv->ring[BCS];
 uint32_t plane_bit = 0;
 int ret;

 ret = intel_pin_and_fence_fb_obj(dev, obj, ring);
 if (ret)
  goto err;

 switch(intel_crtc->plane) {
 case 130:
  plane_bit = MI_DISPLAY_FLIP_IVB_PLANE_A;
  break;
 case 129:
  plane_bit = MI_DISPLAY_FLIP_IVB_PLANE_B;
  break;
 case 128:
  plane_bit = MI_DISPLAY_FLIP_IVB_PLANE_C;
  break;
 default:
  WARN_ONCE(1, "unknown plane in flip command\n");
  ret = -ENODEV;
  goto err_unpin;
 }

 ret = intel_ring_begin(ring, 4);
 if (ret)
  goto err_unpin;

 intel_ring_emit(ring, MI_DISPLAY_FLIP_I915 | plane_bit);
 intel_ring_emit(ring, (fb->pitches[0] | obj->tiling_mode));
 intel_ring_emit(ring, obj->gtt_offset + intel_crtc->dspaddr_offset);
 intel_ring_emit(ring, (MI_NOOP));

 intel_mark_page_flip_active(intel_crtc);
 intel_ring_advance(ring);
 return 0;

err_unpin:
 intel_unpin_fb_obj(obj);
err:
 return ret;
}

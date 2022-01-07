
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct intel_framebuffer {struct drm_i915_gem_object* obj; } ;
struct intel_crtc {int plane; scalar_t__ dspaddr_offset; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {scalar_t__ tiling_mode; scalar_t__ gtt_offset; } ;
struct drm_framebuffer {int pixel_format; int* pitches; int bits_per_pixel; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 unsigned long DISPPLANE_8BPP ;
 unsigned long DISPPLANE_BGRX101010 ;
 unsigned long DISPPLANE_BGRX565 ;
 unsigned long DISPPLANE_BGRX888 ;
 unsigned long DISPPLANE_PIXFORMAT_MASK ;
 unsigned long DISPPLANE_RGBX101010 ;
 unsigned long DISPPLANE_RGBX888 ;
 unsigned long DISPPLANE_TILED ;
 unsigned long DISPPLANE_TRICKLE_FEED_DISABLE ;
 int DRM_DEBUG_KMS (char*,scalar_t__,unsigned long,int,int,int) ;
 int DRM_ERROR (char*,int) ;
 unsigned long DSPCNTR (int) ;
 unsigned long DSPLINOFF (int) ;
 unsigned long DSPOFFSET (int) ;
 unsigned long DSPSTRIDE (int) ;
 int DSPSURF (int) ;
 unsigned long DSPTILEOFF (int) ;
 int EINVAL ;
 int I915_MODIFY_DISPBASE (int ,scalar_t__) ;
 unsigned long I915_READ (unsigned long) ;
 scalar_t__ I915_TILING_NONE ;
 int I915_WRITE (unsigned long,unsigned long) ;
 scalar_t__ IS_HASWELL (struct drm_device*) ;
 int POSTING_READ (unsigned long) ;
 scalar_t__ intel_gen4_compute_page_offset (int*,int*,scalar_t__,int,int) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 struct intel_framebuffer* to_intel_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static int ironlake_update_plane(struct drm_crtc *crtc,
     struct drm_framebuffer *fb, int x, int y)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 struct intel_framebuffer *intel_fb;
 struct drm_i915_gem_object *obj;
 int plane = intel_crtc->plane;
 unsigned long linear_offset;
 u32 dspcntr;
 u32 reg;

 switch (plane) {
 case 0:
 case 1:
 case 2:
  break;
 default:
  DRM_ERROR("Can't update plane %d in SAREA\n", plane);
  return -EINVAL;
 }

 intel_fb = to_intel_framebuffer(fb);
 obj = intel_fb->obj;

 reg = DSPCNTR(plane);
 dspcntr = I915_READ(reg);

 dspcntr &= ~DISPPLANE_PIXFORMAT_MASK;
 switch (fb->pixel_format) {
 case 133:
  dspcntr |= DISPPLANE_8BPP;
  break;
 case 132:
  dspcntr |= DISPPLANE_BGRX565;
  break;
 case 128:
 case 134:
  dspcntr |= DISPPLANE_BGRX888;
  break;
 case 130:
 case 136:
  dspcntr |= DISPPLANE_RGBX888;
  break;
 case 129:
 case 135:
  dspcntr |= DISPPLANE_BGRX101010;
  break;
 case 131:
 case 137:
  dspcntr |= DISPPLANE_RGBX101010;
  break;
 default:
  DRM_ERROR("Unknown pixel format 0x%08x\n", fb->pixel_format);
  return -EINVAL;
 }

 if (obj->tiling_mode != I915_TILING_NONE)
  dspcntr |= DISPPLANE_TILED;
 else
  dspcntr &= ~DISPPLANE_TILED;


 dspcntr |= DISPPLANE_TRICKLE_FEED_DISABLE;

 I915_WRITE(reg, dspcntr);

 linear_offset = y * fb->pitches[0] + x * (fb->bits_per_pixel / 8);
 intel_crtc->dspaddr_offset =
  intel_gen4_compute_page_offset(&x, &y, obj->tiling_mode,
            fb->bits_per_pixel / 8,
            fb->pitches[0]);
 linear_offset -= intel_crtc->dspaddr_offset;

 DRM_DEBUG_KMS("Writing base %08X %08lX %d %d %d\n",
        obj->gtt_offset, linear_offset, x, y, fb->pitches[0]);
 I915_WRITE(DSPSTRIDE(plane), fb->pitches[0]);
 I915_MODIFY_DISPBASE(DSPSURF(plane),
        obj->gtt_offset + intel_crtc->dspaddr_offset);
 if (IS_HASWELL(dev)) {
  I915_WRITE(DSPOFFSET(plane), (y << 16) | x);
 } else {
  I915_WRITE(DSPTILEOFF(plane), (y << 16) | x);
  I915_WRITE(DSPLINOFF(plane), linear_offset);
 }
 POSTING_READ(reg);

 return 0;
}

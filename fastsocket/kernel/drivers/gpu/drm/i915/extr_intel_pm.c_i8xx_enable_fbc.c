
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_framebuffer {struct drm_i915_gem_object* obj; } ;
struct intel_crtc {int plane; } ;
struct drm_i915_private {int cfb_size; } ;
struct drm_i915_gem_object {int fence_reg; } ;
struct drm_framebuffer {int* pitches; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int y; struct drm_framebuffer* fb; struct drm_device* dev; } ;


 int DRM_DEBUG_KMS (char*,int,int,int ) ;
 scalar_t__ FBC_CONTROL ;
 scalar_t__ FBC_CONTROL2 ;
 int FBC_CTL_C3_IDLE ;
 int FBC_CTL_CPU_FENCE ;
 int FBC_CTL_EN ;
 int FBC_CTL_FENCE_DBL ;
 int FBC_CTL_IDLE_IMM ;
 unsigned long FBC_CTL_INTERVAL_SHIFT ;
 int FBC_CTL_PERIODIC ;
 int FBC_CTL_PLANEA ;
 int FBC_CTL_PLANEB ;
 int FBC_CTL_STRIDE_SHIFT ;
 scalar_t__ FBC_FENCE_OFF ;
 int FBC_LL_SIZE ;
 scalar_t__ FBC_TAG ;
 int I915_WRITE (scalar_t__,int) ;
 scalar_t__ IS_I945GM (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 struct intel_framebuffer* to_intel_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static void i8xx_enable_fbc(struct drm_crtc *crtc, unsigned long interval)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_framebuffer *fb = crtc->fb;
 struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 struct drm_i915_gem_object *obj = intel_fb->obj;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int cfb_pitch;
 int plane, i;
 u32 fbc_ctl, fbc_ctl2;

 cfb_pitch = dev_priv->cfb_size / FBC_LL_SIZE;
 if (fb->pitches[0] < cfb_pitch)
  cfb_pitch = fb->pitches[0];


 cfb_pitch = (cfb_pitch / 64) - 1;
 plane = intel_crtc->plane == 0 ? FBC_CTL_PLANEA : FBC_CTL_PLANEB;


 for (i = 0; i < (FBC_LL_SIZE / 32) + 1; i++)
  I915_WRITE(FBC_TAG + (i * 4), 0);


 fbc_ctl2 = FBC_CTL_FENCE_DBL | FBC_CTL_IDLE_IMM | FBC_CTL_CPU_FENCE;
 fbc_ctl2 |= plane;
 I915_WRITE(FBC_CONTROL2, fbc_ctl2);
 I915_WRITE(FBC_FENCE_OFF, crtc->y);


 fbc_ctl = FBC_CTL_EN | FBC_CTL_PERIODIC;
 if (IS_I945GM(dev))
  fbc_ctl |= FBC_CTL_C3_IDLE;
 fbc_ctl |= (cfb_pitch & 0xff) << FBC_CTL_STRIDE_SHIFT;
 fbc_ctl |= (interval & 0x2fff) << FBC_CTL_INTERVAL_SHIFT;
 fbc_ctl |= obj->fence_reg;
 I915_WRITE(FBC_CONTROL, fbc_ctl);

 DRM_DEBUG_KMS("enabled FBC, pitch %d, yoff %d, plane %d, ",
        cfb_pitch, crtc->y, intel_crtc->plane);
}

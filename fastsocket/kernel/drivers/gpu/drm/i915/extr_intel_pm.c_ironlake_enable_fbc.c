
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_framebuffer {struct drm_i915_gem_object* obj; } ;
struct intel_crtc {int plane; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int fence_reg; int gtt_offset; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int y; struct drm_framebuffer* fb; struct drm_device* dev; } ;


 int DPFC_CPU_FENCE_OFFSET ;
 int DPFC_CTL_EN ;
 int DPFC_CTL_FENCE_EN ;
 int DPFC_CTL_LIMIT_1X ;
 int DPFC_CTL_PERSISTENT_MODE ;
 int DPFC_CTL_PLANEA ;
 int DPFC_CTL_PLANEB ;
 int DPFC_HT_MODIFY ;
 unsigned long DPFC_RECOMP_STALL_EN ;
 unsigned long DPFC_RECOMP_STALL_WM_SHIFT ;
 unsigned long DPFC_RECOMP_TIMER_COUNT_SHIFT ;
 int DPFC_RESERVED ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int ILK_DPFC_CHICKEN ;
 int ILK_DPFC_CONTROL ;
 int ILK_DPFC_FENCE_YOFF ;
 int ILK_DPFC_RECOMP_CTL ;
 int ILK_FBC_RT_BASE ;
 int ILK_FBC_RT_VALID ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;
 int SNB_CPU_FENCE_ENABLE ;
 int SNB_DPFC_CTL_SA ;
 int sandybridge_blit_fbc_update (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 struct intel_framebuffer* to_intel_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static void ironlake_enable_fbc(struct drm_crtc *crtc, unsigned long interval)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_framebuffer *fb = crtc->fb;
 struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 struct drm_i915_gem_object *obj = intel_fb->obj;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int plane = intel_crtc->plane == 0 ? DPFC_CTL_PLANEA : DPFC_CTL_PLANEB;
 unsigned long stall_watermark = 200;
 u32 dpfc_ctl;

 dpfc_ctl = I915_READ(ILK_DPFC_CONTROL);
 dpfc_ctl &= DPFC_RESERVED;
 dpfc_ctl |= (plane | DPFC_CTL_LIMIT_1X);

 dpfc_ctl |= DPFC_CTL_PERSISTENT_MODE;
 dpfc_ctl |= (DPFC_CTL_FENCE_EN | obj->fence_reg);
 I915_WRITE(ILK_DPFC_CHICKEN, DPFC_HT_MODIFY);

 I915_WRITE(ILK_DPFC_RECOMP_CTL, DPFC_RECOMP_STALL_EN |
     (stall_watermark << DPFC_RECOMP_STALL_WM_SHIFT) |
     (interval << DPFC_RECOMP_TIMER_COUNT_SHIFT));
 I915_WRITE(ILK_DPFC_FENCE_YOFF, crtc->y);
 I915_WRITE(ILK_FBC_RT_BASE, obj->gtt_offset | ILK_FBC_RT_VALID);

 I915_WRITE(ILK_DPFC_CONTROL, dpfc_ctl | DPFC_CTL_EN);

 if (IS_GEN6(dev)) {
  I915_WRITE(SNB_DPFC_CTL_SA,
      SNB_CPU_FENCE_ENABLE | obj->fence_reg);
  I915_WRITE(DPFC_CPU_FENCE_OFFSET, crtc->y);
  sandybridge_blit_fbc_update(dev);
 }

 DRM_DEBUG_KMS("enabled fbc on plane %d\n", intel_crtc->plane);
}

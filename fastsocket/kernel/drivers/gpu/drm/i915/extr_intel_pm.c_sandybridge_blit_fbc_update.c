
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int GEN6_BLITTER_ECOSKPD ;
 int GEN6_BLITTER_FBC_NOTIFY ;
 int GEN6_BLITTER_LOCK_SHIFT ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int gen6_gt_force_wake_get (struct drm_i915_private*) ;
 int gen6_gt_force_wake_put (struct drm_i915_private*) ;

__attribute__((used)) static void sandybridge_blit_fbc_update(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 blt_ecoskpd;


 gen6_gt_force_wake_get(dev_priv);
 blt_ecoskpd = I915_READ(GEN6_BLITTER_ECOSKPD);
 blt_ecoskpd |= GEN6_BLITTER_FBC_NOTIFY <<
  GEN6_BLITTER_LOCK_SHIFT;
 I915_WRITE(GEN6_BLITTER_ECOSKPD, blt_ecoskpd);
 blt_ecoskpd |= GEN6_BLITTER_FBC_NOTIFY;
 I915_WRITE(GEN6_BLITTER_ECOSKPD, blt_ecoskpd);
 blt_ecoskpd &= ~(GEN6_BLITTER_FBC_NOTIFY <<
    GEN6_BLITTER_LOCK_SHIFT);
 I915_WRITE(GEN6_BLITTER_ECOSKPD, blt_ecoskpd);
 POSTING_READ(GEN6_BLITTER_ECOSKPD);
 gen6_gt_force_wake_put(dev_priv);
}

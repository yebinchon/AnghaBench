
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DP_A ;
 int DP_DETECTED ;
 int I915_READ (int ) ;
 int ILK_DISPLAY_CHICKEN_FUSES ;
 int ILK_eDP_A_DISABLE ;
 scalar_t__ IS_GEN5 (struct drm_device*) ;
 int IS_MOBILE (struct drm_device*) ;

__attribute__((used)) static bool has_edp_a(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (!IS_MOBILE(dev))
  return 0;

 if ((I915_READ(DP_A) & DP_DETECTED) == 0)
  return 0;

 if (IS_GEN5(dev) &&
     (I915_READ(ILK_DISPLAY_CHICKEN_FUSES) & ILK_eDP_A_DISABLE))
  return 0;

 return 1;
}

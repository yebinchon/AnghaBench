
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int PWRCTXA ;
 int RCX_SW_EXIT ;
 int RSTDBYCTL ;
 int RSX_STATUS_MASK ;
 int RSX_STATUS_ON ;
 int wait_for (int,int) ;

__attribute__((used)) static void ironlake_disable_rc6(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (I915_READ(PWRCTXA)) {

  I915_WRITE(RSTDBYCTL, I915_READ(RSTDBYCTL) | RCX_SW_EXIT);
  wait_for(((I915_READ(RSTDBYCTL) & RSX_STATUS_MASK) == RSX_STATUS_ON),
    50);

  I915_WRITE(PWRCTXA, 0);
  POSTING_READ(PWRCTXA);

  I915_WRITE(RSTDBYCTL, I915_READ(RSTDBYCTL) & ~RCX_SW_EXIT);
  POSTING_READ(RSTDBYCTL);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delayed_resume_work; } ;
struct drm_i915_private {TYPE_1__ rps; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int HZ ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;
 scalar_t__ IS_GEN7 (struct drm_device*) ;
 scalar_t__ IS_IRONLAKE_M (struct drm_device*) ;
 int IS_VALLEYVIEW (struct drm_device*) ;
 int intel_init_emon (struct drm_device*) ;
 int ironlake_enable_drps (struct drm_device*) ;
 int ironlake_enable_rc6 (struct drm_device*) ;
 int round_jiffies_up_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;

void intel_enable_gt_powersave(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (IS_IRONLAKE_M(dev)) {
  ironlake_enable_drps(dev);
  ironlake_enable_rc6(dev);
  intel_init_emon(dev);
 } else if ((IS_GEN6(dev) || IS_GEN7(dev)) && !IS_VALLEYVIEW(dev)) {





  schedule_delayed_work(&dev_priv->rps.delayed_resume_work,
          round_jiffies_up_relative(HZ));
 }
}

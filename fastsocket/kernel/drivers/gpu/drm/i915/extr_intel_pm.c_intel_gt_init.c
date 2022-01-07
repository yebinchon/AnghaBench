
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int delayed_resume_work; } ;
struct TYPE_3__ {int force_wake_put; int force_wake_get; } ;
struct drm_i915_private {TYPE_2__ rps; TYPE_1__ gt; int gt_lock; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;
 scalar_t__ IS_HASWELL (struct drm_device*) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_device*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;
 int __gen6_gt_force_wake_get ;
 int __gen6_gt_force_wake_mt_get ;
 int __gen6_gt_force_wake_mt_put ;
 int __gen6_gt_force_wake_put ;
 int intel_gen6_powersave_work ;
 int intel_gt_reset (struct drm_device*) ;
 int spin_lock_init (int *) ;
 int vlv_force_wake_get ;
 int vlv_force_wake_put ;

void intel_gt_init(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 spin_lock_init(&dev_priv->gt_lock);

 intel_gt_reset(dev);

 if (IS_VALLEYVIEW(dev)) {
  dev_priv->gt.force_wake_get = vlv_force_wake_get;
  dev_priv->gt.force_wake_put = vlv_force_wake_put;
 } else if (IS_IVYBRIDGE(dev) || IS_HASWELL(dev)) {
  dev_priv->gt.force_wake_get = __gen6_gt_force_wake_mt_get;
  dev_priv->gt.force_wake_put = __gen6_gt_force_wake_mt_put;
 } else if (IS_GEN6(dev)) {
  dev_priv->gt.force_wake_get = __gen6_gt_force_wake_get;
  dev_priv->gt.force_wake_put = __gen6_gt_force_wake_put;
 }
 INIT_DELAYED_WORK(&dev_priv->rps.delayed_resume_work,
     intel_gen6_powersave_work);
}

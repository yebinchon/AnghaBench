
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;


 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_HASWELL (struct drm_device*) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_device*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;
 int __gen6_gt_force_wake_mt_reset (struct drm_i915_private*) ;
 int __gen6_gt_force_wake_reset (struct drm_i915_private*) ;
 int vlv_force_wake_reset (struct drm_i915_private*) ;

void intel_gt_reset(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (IS_VALLEYVIEW(dev)) {
  vlv_force_wake_reset(dev_priv);
 } else if (INTEL_INFO(dev)->gen >= 6) {
  __gen6_gt_force_wake_reset(dev_priv);
  if (IS_IVYBRIDGE(dev) || IS_HASWELL(dev))
   __gen6_gt_force_wake_mt_reset(dev_priv);
 }
}

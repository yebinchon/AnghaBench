
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hw_lock; int delayed_resume_work; } ;
struct drm_i915_private {TYPE_1__ rps; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;


 TYPE_2__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_IRONLAKE_M (struct drm_device*) ;
 int IS_VALLEYVIEW (struct drm_device*) ;
 int cancel_delayed_work_sync (int *) ;
 int gen6_disable_rps (struct drm_device*) ;
 int ironlake_disable_drps (struct drm_device*) ;
 int ironlake_disable_rc6 (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_disable_gt_powersave(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (IS_IRONLAKE_M(dev)) {
  ironlake_disable_drps(dev);
  ironlake_disable_rc6(dev);
 } else if (INTEL_INFO(dev)->gen >= 6 && !IS_VALLEYVIEW(dev)) {
  cancel_delayed_work_sync(&dev_priv->rps.delayed_resume_work);
  mutex_lock(&dev_priv->rps.hw_lock);
  gen6_disable_rps(dev);
  mutex_unlock(&dev_priv->rps.hw_lock);
 }
}

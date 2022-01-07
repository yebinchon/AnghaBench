
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_hw_ppgtt {int (* cleanup ) (struct i915_hw_ppgtt*) ;} ;
struct TYPE_2__ {struct i915_hw_ppgtt* aliasing_ppgtt; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int stub1 (struct i915_hw_ppgtt*) ;

void i915_gem_cleanup_aliasing_ppgtt(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct i915_hw_ppgtt *ppgtt = dev_priv->mm.aliasing_ppgtt;

 if (!ppgtt)
  return;

 ppgtt->cleanup(ppgtt);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int interruptible; } ;
struct TYPE_3__ {int do_idle_maps; } ;
struct drm_i915_private {int dev; TYPE_2__ mm; TYPE_1__ gtt; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ i915_gpu_idle (int ) ;
 int udelay (int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool do_idling(struct drm_i915_private *dev_priv)
{
 bool ret = dev_priv->mm.interruptible;

 if (unlikely(dev_priv->gtt.do_idle_maps)) {
  dev_priv->mm.interruptible = 0;
  if (i915_gpu_idle(dev_priv->dev)) {
   DRM_ERROR("Couldn't idle GPU\n");

   udelay(10);
  }
 }

 return ret;
}

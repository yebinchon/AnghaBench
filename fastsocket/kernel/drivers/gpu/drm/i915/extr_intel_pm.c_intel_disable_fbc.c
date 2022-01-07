
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* disable_fbc ) (struct drm_device*) ;} ;
struct drm_i915_private {int cfb_plane; TYPE_1__ display; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int intel_cancel_fbc_work (struct drm_i915_private*) ;
 int stub1 (struct drm_device*) ;

void intel_disable_fbc(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 intel_cancel_fbc_work(dev_priv);

 if (!dev_priv->display.disable_fbc)
  return;

 dev_priv->display.disable_fbc(dev);
 dev_priv->cfb_plane = -1;
}

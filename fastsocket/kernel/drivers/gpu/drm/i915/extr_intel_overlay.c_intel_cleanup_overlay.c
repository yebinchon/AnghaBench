
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_5__ {TYPE_3__* overlay; } ;
typedef TYPE_2__ drm_i915_private_t ;
struct TYPE_6__ {TYPE_1__* reg_bo; int active; } ;
struct TYPE_4__ {int base; } ;


 int BUG_ON (int ) ;
 int drm_gem_object_unreference_unlocked (int *) ;
 int kfree (TYPE_3__*) ;

void intel_cleanup_overlay(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;

 if (!dev_priv->overlay)
  return;




 BUG_ON(dev_priv->overlay->active);

 drm_gem_object_unreference_unlocked(&dev_priv->overlay->reg_bo->base);
 kfree(dev_priv->overlay);
}

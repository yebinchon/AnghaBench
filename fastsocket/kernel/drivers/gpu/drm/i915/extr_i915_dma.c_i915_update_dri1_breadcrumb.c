
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_i915_master_private {TYPE_3__* sarea_priv; } ;
struct drm_device {TYPE_2__* primary; int * dev_private; } ;
typedef int drm_i915_private_t ;
struct TYPE_6__ {int last_dispatch; } ;
struct TYPE_5__ {TYPE_1__* master; } ;
struct TYPE_4__ {struct drm_i915_master_private* driver_priv; } ;


 int READ_BREADCRUMB (int *) ;

void i915_update_dri1_breadcrumb(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct drm_i915_master_private *master_priv;

 if (dev->primary->master) {
  master_priv = dev->primary->master->driver_priv;
  if (master_priv->sarea_priv)
   master_priv->sarea_priv->last_dispatch =
    READ_BREADCRUMB(dev_priv);
 }
}

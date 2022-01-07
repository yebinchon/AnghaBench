
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_radeon_master_private {scalar_t__ sarea; TYPE_1__* sarea_priv; } ;
struct drm_master {struct drm_radeon_master_private* driver_priv; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ pfCurrentPage; } ;


 int drm_rmmap_locked (struct drm_device*,scalar_t__) ;
 int kfree (struct drm_radeon_master_private*) ;
 int radeon_cp_dispatch_flip (struct drm_device*,struct drm_master*) ;

void radeon_master_destroy(struct drm_device *dev, struct drm_master *master)
{
 struct drm_radeon_master_private *master_priv = master->driver_priv;

 if (!master_priv)
  return;

 if (master_priv->sarea_priv &&
     master_priv->sarea_priv->pfCurrentPage != 0)
  radeon_cp_dispatch_flip(dev, master);

 master_priv->sarea_priv = ((void*)0);
 if (master_priv->sarea)
  drm_rmmap_locked(dev, master_priv->sarea);

 kfree(master_priv);

 master->driver_priv = ((void*)0);
}

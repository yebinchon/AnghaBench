
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {TYPE_1__* mtrr; } ;
typedef TYPE_2__ drm_savage_private_t ;
struct TYPE_3__ {scalar_t__ handle; int size; int base; } ;


 int DRM_MTRR_WC ;
 int drm_mtrr_del (scalar_t__,int ,int ,int ) ;

void savage_driver_lastclose(struct drm_device *dev)
{
 drm_savage_private_t *dev_priv = dev->dev_private;
 int i;

 for (i = 0; i < 3; ++i)
  if (dev_priv->mtrr[i].handle >= 0)
   drm_mtrr_del(dev_priv->mtrr[i].handle,
     dev_priv->mtrr[i].base,
     dev_priv->mtrr[i].size, DRM_MTRR_WC);
}

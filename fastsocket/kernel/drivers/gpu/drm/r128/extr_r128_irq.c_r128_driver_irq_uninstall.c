
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_r128_private_t ;


 int R128_GEN_INT_CNTL ;
 int R128_WRITE (int ,int ) ;

void r128_driver_irq_uninstall(struct drm_device *dev)
{
 drm_r128_private_t *dev_priv = (drm_r128_private_t *) dev->dev_private;
 if (!dev_priv)
  return;


 R128_WRITE(R128_GEN_INT_CNTL, 0);
}

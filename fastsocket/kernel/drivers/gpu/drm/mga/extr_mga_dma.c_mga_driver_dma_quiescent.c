
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; } ;
typedef int drm_mga_private_t ;


 int mga_do_wait_for_idle (int *) ;

int mga_driver_dma_quiescent(struct drm_device *dev)
{
 drm_mga_private_t *dev_priv = dev->dev_private;
 return mga_do_wait_for_idle(dev_priv);
}

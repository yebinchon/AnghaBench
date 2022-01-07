
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; } ;
typedef int drm_via_private_t ;


 int EBUSY ;
 int via_wait_idle (int *) ;

int via_driver_dma_quiescent(struct drm_device *dev)
{
 drm_via_private_t *dev_priv = dev->dev_private;

 if (!via_wait_idle(dev_priv))
  return -EBUSY;
 return 0;
}

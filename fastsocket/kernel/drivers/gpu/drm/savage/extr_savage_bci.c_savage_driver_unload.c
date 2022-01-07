
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; } ;
typedef int drm_savage_private_t ;


 int kfree (int *) ;

int savage_driver_unload(struct drm_device *dev)
{
 drm_savage_private_t *dev_priv = dev->dev_private;

 kfree(dev_priv);

 return 0;
}

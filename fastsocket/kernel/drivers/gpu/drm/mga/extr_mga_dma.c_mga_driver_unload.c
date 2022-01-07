
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; } ;


 int kfree (int *) ;

int mga_driver_unload(struct drm_device *dev)
{
 kfree(dev->dev_private);
 dev->dev_private = ((void*)0);

 return 0;
}

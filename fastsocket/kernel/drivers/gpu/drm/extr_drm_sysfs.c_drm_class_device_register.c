
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ class; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int device_register (struct device*) ;
 scalar_t__ drm_class ;

int drm_class_device_register(struct device *dev)
{
 if (!drm_class || IS_ERR(drm_class))
  return -ENOENT;

 dev->class = drm_class;
 return device_register(dev);
}

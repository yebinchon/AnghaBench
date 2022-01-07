
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;



int i810_driver_device_is_agp(struct drm_device *dev)
{
 return 1;
}

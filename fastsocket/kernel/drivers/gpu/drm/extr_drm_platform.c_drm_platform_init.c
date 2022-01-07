
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {struct platform_device* platform_device; } ;
struct drm_driver {int device_list; int * bus; TYPE_1__ kdriver; } ;


 int DRM_DEBUG (char*) ;
 int INIT_LIST_HEAD (int *) ;
 int drm_get_platform_dev (struct platform_device*,struct drm_driver*) ;
 int drm_platform_bus ;

int drm_platform_init(struct drm_driver *driver, struct platform_device *platform_device)
{
 DRM_DEBUG("\n");

 driver->kdriver.platform_device = platform_device;
 driver->bus = &drm_platform_bus;
 INIT_LIST_HEAD(&driver->device_list);
 return drm_get_platform_dev(platform_device, driver);
}

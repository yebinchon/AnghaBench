
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_driver {int dummy; } ;
struct TYPE_2__ {struct usb_driver* usb; } ;
struct drm_driver {int * bus; TYPE_1__ kdriver; int device_list; } ;


 int DRM_DEBUG (char*) ;
 int INIT_LIST_HEAD (int *) ;
 int drm_usb_bus ;
 int usb_register (struct usb_driver*) ;

int drm_usb_init(struct drm_driver *driver, struct usb_driver *udriver)
{
 int res;
 DRM_DEBUG("\n");

 INIT_LIST_HEAD(&driver->device_list);
 driver->kdriver.usb = udriver;
 driver->bus = &drm_usb_bus;

 res = usb_register(udriver);
 return res;
}

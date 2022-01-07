
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_driver {int dummy; } ;
struct drm_driver {int dummy; } ;


 int usb_deregister (struct usb_driver*) ;

void drm_usb_exit(struct drm_driver *driver,
    struct usb_driver *udriver)
{
 usb_deregister(udriver);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int hiddev_usbd_probe(struct usb_interface *intf,
        const struct usb_device_id *hiddev_info)
{
 return -ENODEV;
}

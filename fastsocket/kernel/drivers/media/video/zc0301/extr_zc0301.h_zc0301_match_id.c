
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zc0301_device {int usbdev; } ;
struct usb_device_id {int dummy; } ;


 int usb_ifnum_to_if (int ,int ) ;
 scalar_t__ usb_match_id (int ,struct usb_device_id const*) ;

struct zc0301_device*
zc0301_match_id(struct zc0301_device* cam, const struct usb_device_id *id)
{
 return usb_match_id(usb_ifnum_to_if(cam->usbdev, 0), id) ? cam : ((void*)0);
}

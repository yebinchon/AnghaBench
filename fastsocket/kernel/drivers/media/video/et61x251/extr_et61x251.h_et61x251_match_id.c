
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct et61x251_device {int usbdev; } ;


 int usb_ifnum_to_if (int ,int ) ;
 scalar_t__ usb_match_id (int ,struct usb_device_id const*) ;

struct et61x251_device*
et61x251_match_id(struct et61x251_device* cam, const struct usb_device_id *id)
{
 return usb_match_id(usb_ifnum_to_if(cam->usbdev, 0), id) ? cam : ((void*)0);
}

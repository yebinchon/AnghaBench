
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* net; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int hard_header_len; } ;


 scalar_t__ EEM_HEAD ;
 scalar_t__ ETH_FCS_LEN ;
 int driver_of (struct usb_interface*) ;
 int usb_driver_release_interface (int ,struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int eem_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int status = 0;

 status = usbnet_get_endpoints(dev, intf);
 if (status < 0) {
  usb_set_intfdata(intf, ((void*)0));
  usb_driver_release_interface(driver_of(intf), intf);
  return status;
 }



 dev->net->hard_header_len += EEM_HEAD + ETH_FCS_LEN;

 return 0;
}

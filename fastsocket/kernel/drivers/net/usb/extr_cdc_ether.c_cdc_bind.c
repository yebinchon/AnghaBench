
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int data; } ;
struct usb_interface {int dummy; } ;
struct cdc_state {int data; TYPE_1__* ether; } ;
struct TYPE_2__ {int iMACAddress; } ;


 int driver_of (struct usb_interface*) ;
 int usb_driver_release_interface (int ,int ) ;
 int usb_set_intfdata (int ,int *) ;
 int usbnet_generic_cdc_bind (struct usbnet*,struct usb_interface*) ;
 int usbnet_get_ethernet_addr (struct usbnet*,int ) ;

__attribute__((used)) static int cdc_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int status;
 struct cdc_state *info = (void *) &dev->data;

 status = usbnet_generic_cdc_bind(dev, intf);
 if (status < 0)
  return status;

 status = usbnet_get_ethernet_addr(dev, info->ether->iMACAddress);
 if (status < 0) {
  usb_set_intfdata(info->data, ((void*)0));
  usb_driver_release_interface(driver_of(intf), info->data);
  return status;
 }





 return 0;
}

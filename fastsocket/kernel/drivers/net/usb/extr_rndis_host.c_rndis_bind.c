
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;


 int FLAG_RNDIS_PHYM_NOT_WIRELESS ;
 int generic_rndis_bind (struct usbnet*,struct usb_interface*,int ) ;

__attribute__((used)) static int rndis_bind(struct usbnet *dev, struct usb_interface *intf)
{
 return generic_rndis_bind(dev, intf, FLAG_RNDIS_PHYM_NOT_WIRELESS);
}

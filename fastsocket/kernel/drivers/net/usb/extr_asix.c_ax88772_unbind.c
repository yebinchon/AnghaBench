
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__ driver_priv; } ;
struct usb_interface {int dummy; } ;


 int kfree (scalar_t__) ;

void ax88772_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 if (dev->driver_priv)
  kfree(dev->driver_priv);
}

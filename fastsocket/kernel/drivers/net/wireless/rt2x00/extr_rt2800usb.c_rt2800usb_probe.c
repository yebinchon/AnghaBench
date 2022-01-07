
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int driver_info; } ;


 int rt2800usb_ops ;
 int rt2800usb_ops_5592 ;
 int rt2x00usb_probe (struct usb_interface*,int *) ;

__attribute__((used)) static int rt2800usb_probe(struct usb_interface *usb_intf,
      const struct usb_device_id *id)
{
 if (id->driver_info == 5592)
  return rt2x00usb_probe(usb_intf, &rt2800usb_ops_5592);

 return rt2x00usb_probe(usb_intf, &rt2800usb_ops);
}

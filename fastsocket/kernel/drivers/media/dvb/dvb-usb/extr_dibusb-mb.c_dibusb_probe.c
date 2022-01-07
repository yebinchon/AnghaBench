
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int EINVAL ;
 int THIS_MODULE ;
 int adapter_nr ;
 int artec_t1_usb2_properties ;
 int dibusb1_1_an2235_properties ;
 int dibusb1_1_properties ;
 int dibusb2_0b_properties ;
 scalar_t__ dvb_usb_device_init (struct usb_interface*,int *,int ,int *,int ) ;

__attribute__((used)) static int dibusb_probe(struct usb_interface *intf,
  const struct usb_device_id *id)
{
 if (0 == dvb_usb_device_init(intf, &dibusb1_1_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &dibusb1_1_an2235_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &dibusb2_0b_properties,
         THIS_MODULE, ((void*)0), adapter_nr) ||
     0 == dvb_usb_device_init(intf, &artec_t1_usb2_properties,
         THIS_MODULE, ((void*)0), adapter_nr))
  return 0;

 return -EINVAL;
}

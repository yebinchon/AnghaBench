
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int THIS_MODULE ;
 int adapter_nr ;
 int dvb_usb_device_init (struct usb_interface*,int *,int ,int *,int ) ;
 int vp7045_properties ;

__attribute__((used)) static int vp7045_usb_probe(struct usb_interface *intf,
  const struct usb_device_id *id)
{
 return dvb_usb_device_init(intf, &vp7045_properties,
       THIS_MODULE, ((void*)0), adapter_nr);
}

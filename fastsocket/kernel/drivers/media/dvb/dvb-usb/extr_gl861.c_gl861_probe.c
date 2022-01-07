
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int num_altsetting; } ;
struct TYPE_2__ {int bAlternateSetting; int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_device_id {int dummy; } ;
struct dvb_usb_device {int udev; } ;


 int ENODEV ;
 int THIS_MODULE ;
 int adapter_nr ;
 int deb_rc (char*) ;
 int dvb_usb_device_init (struct usb_interface*,int *,int ,struct dvb_usb_device**,int ) ;
 int gl861_properties ;
 struct usb_host_interface* usb_altnum_to_altsetting (struct usb_interface*,int ) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int gl861_probe(struct usb_interface *intf,
         const struct usb_device_id *id)
{
 struct dvb_usb_device *d;
 struct usb_host_interface *alt;
 int ret;

 if (intf->num_altsetting < 2)
  return -ENODEV;

 ret = dvb_usb_device_init(intf, &gl861_properties, THIS_MODULE, &d,
      adapter_nr);
 if (ret == 0) {
  alt = usb_altnum_to_altsetting(intf, 0);

  if (alt == ((void*)0)) {
   deb_rc("not alt found!\n");
   return -ENODEV;
  }

  ret = usb_set_interface(d->udev, alt->desc.bInterfaceNumber,
     alt->desc.bAlternateSetting);
 }

 return ret;
}

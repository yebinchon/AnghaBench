
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {scalar_t__ num_altsetting; } ;
struct TYPE_2__ {int bAlternateSetting; int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_device_id {int dummy; } ;
struct dvb_usb_device {int * adapter; } ;


 int ENODEV ;
 int FRIIO_BULK_ALTSETTING ;
 scalar_t__ GL861_ALTSETTING_COUNT ;
 int THIS_MODULE ;
 int adapter_nr ;
 int deb_rc (char*) ;
 int dvb_usb_device_init (struct usb_interface*,int *,int ,struct dvb_usb_device**,int ) ;
 int friio_properties ;
 int friio_streaming_ctrl (int *,int) ;
 int interface_to_usbdev (struct usb_interface*) ;
 struct usb_host_interface* usb_altnum_to_altsetting (struct usb_interface*,int ) ;
 int usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int friio_probe(struct usb_interface *intf,
         const struct usb_device_id *id)
{
 struct dvb_usb_device *d;
 struct usb_host_interface *alt;
 int ret;

 if (intf->num_altsetting < GL861_ALTSETTING_COUNT)
  return -ENODEV;

 alt = usb_altnum_to_altsetting(intf, FRIIO_BULK_ALTSETTING);
 if (alt == ((void*)0)) {
  deb_rc("not alt found!\n");
  return -ENODEV;
 }
 ret = usb_set_interface(interface_to_usbdev(intf),
    alt->desc.bInterfaceNumber,
    alt->desc.bAlternateSetting);
 if (ret != 0) {
  deb_rc("failed to set alt-setting!\n");
  return ret;
 }

 ret = dvb_usb_device_init(intf, &friio_properties,
      THIS_MODULE, &d, adapter_nr);
 if (ret == 0)
  friio_streaming_ctrl(&d->adapter[0], 1);

 return ret;
}

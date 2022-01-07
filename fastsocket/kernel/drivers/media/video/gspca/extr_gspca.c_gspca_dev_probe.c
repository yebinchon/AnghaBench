
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int idProduct; int idVendor; } ;
struct TYPE_8__ {int bNumConfigurations; } ;
struct usb_device {TYPE_4__* config; TYPE_3__ descriptor; } ;
struct sd_desc {int dummy; } ;
struct module {int dummy; } ;
struct TYPE_10__ {int bNumInterfaces; } ;
struct TYPE_9__ {TYPE_5__ desc; } ;
struct TYPE_6__ {scalar_t__ bInterfaceNumber; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;


 int ENODEV ;
 int err (char*,int ,int ) ;
 int gspca_dev_probe2 (struct usb_interface*,struct usb_device_id const*,struct sd_desc const*,int,struct module*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;

int gspca_dev_probe(struct usb_interface *intf,
  const struct usb_device_id *id,
  const struct sd_desc *sd_desc,
  int dev_size,
  struct module *module)
{
 struct usb_device *dev = interface_to_usbdev(intf);


 if (dev->descriptor.bNumConfigurations != 1) {
  err("%04x:%04x too many config",
    id->idVendor, id->idProduct);
  return -ENODEV;
 }


 if (dev->config->desc.bNumInterfaces != 1
  && intf->cur_altsetting->desc.bInterfaceNumber != 0)
  return -ENODEV;

 return gspca_dev_probe2(intf, id, sd_desc, dev_size, module);
}

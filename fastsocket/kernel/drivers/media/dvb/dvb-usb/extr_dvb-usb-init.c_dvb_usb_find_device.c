
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int idProduct; int idVendor; } ;
struct usb_device {TYPE_3__ descriptor; } ;
struct dvb_usb_device_properties {int num_device_descs; int (* identify_state ) (struct usb_device*,struct dvb_usb_device_properties*,struct dvb_usb_device_description**,int*) ;struct dvb_usb_device_description* devices; } ;
struct dvb_usb_device_description {TYPE_2__** warm_ids; TYPE_1__** cold_ids; } ;
struct TYPE_5__ {scalar_t__ idVendor; scalar_t__ idProduct; } ;
struct TYPE_4__ {scalar_t__ idVendor; scalar_t__ idProduct; } ;


 int DVB_USB_ID_MAX_NUM ;
 int deb_info (char*,scalar_t__,scalar_t__) ;
 scalar_t__ le16_to_cpu (int ) ;
 int stub1 (struct usb_device*,struct dvb_usb_device_properties*,struct dvb_usb_device_description**,int*) ;

__attribute__((used)) static struct dvb_usb_device_description *dvb_usb_find_device(struct usb_device *udev, struct dvb_usb_device_properties *props, int *cold)
{
 int i, j;
 struct dvb_usb_device_description *desc = ((void*)0);

 *cold = -1;

 for (i = 0; i < props->num_device_descs; i++) {

  for (j = 0; j < DVB_USB_ID_MAX_NUM && props->devices[i].cold_ids[j] != ((void*)0); j++) {
   deb_info("check for cold %x %x\n", props->devices[i].cold_ids[j]->idVendor, props->devices[i].cold_ids[j]->idProduct);
   if (props->devices[i].cold_ids[j]->idVendor == le16_to_cpu(udev->descriptor.idVendor) &&
    props->devices[i].cold_ids[j]->idProduct == le16_to_cpu(udev->descriptor.idProduct)) {
    *cold = 1;
    desc = &props->devices[i];
    break;
   }
  }

  if (desc != ((void*)0))
   break;

  for (j = 0; j < DVB_USB_ID_MAX_NUM && props->devices[i].warm_ids[j] != ((void*)0); j++) {
   deb_info("check for warm %x %x\n", props->devices[i].warm_ids[j]->idVendor, props->devices[i].warm_ids[j]->idProduct);
   if (props->devices[i].warm_ids[j]->idVendor == le16_to_cpu(udev->descriptor.idVendor) &&
    props->devices[i].warm_ids[j]->idProduct == le16_to_cpu(udev->descriptor.idProduct)) {
    *cold = 0;
    desc = &props->devices[i];
    break;
   }
  }
 }

 if (desc != ((void*)0) && props->identify_state != ((void*)0))
  props->identify_state(udev, props, &desc, cold);

 return desc;
}

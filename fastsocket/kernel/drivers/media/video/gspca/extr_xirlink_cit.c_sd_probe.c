
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {TYPE_1__* cur_altsetting; } ;
struct usb_device_id {int driver_info; } ;
struct sd_desc {int dummy; } ;
struct sd {int dummy; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_3__ {TYPE_2__ desc; } ;







 int ENODEV ;
 int THIS_MODULE ;
 int gspca_dev_probe2 (struct usb_interface*,struct usb_device_id const*,struct sd_desc const*,int,int ) ;
 int ibm_netcam_pro ;
 struct sd_desc sd_desc ;
 struct sd_desc sd_desc_isoc_nego ;

__attribute__((used)) static int sd_probe(struct usb_interface *intf,
   const struct usb_device_id *id)
{
 const struct sd_desc *desc = &sd_desc;

 switch (id->driver_info) {
 case 132:
 case 131:
  if (intf->cur_altsetting->desc.bInterfaceNumber != 2)
   return -ENODEV;
  break;
 case 130:
 case 128:
  if (intf->cur_altsetting->desc.bInterfaceNumber != 0)
   return -ENODEV;
  break;
 case 129:
  if (intf->cur_altsetting->desc.bInterfaceNumber != 0)
   return -ENODEV;


  if (ibm_netcam_pro)
   desc = &sd_desc_isoc_nego;
  break;
 }

 return gspca_dev_probe2(intf, id, desc, sizeof(struct sd), THIS_MODULE);
}

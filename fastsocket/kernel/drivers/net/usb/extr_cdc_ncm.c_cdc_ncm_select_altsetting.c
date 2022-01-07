
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {int udev; } ;
struct usb_interface {int num_altsetting; TYPE_2__* cur_altsetting; } ;
struct usb_host_interface {int dummy; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int CDC_NCM_COMM_ALTSETTING_MBIM ;
 int CDC_NCM_DATA_ALTSETTING_MBIM ;
 int CDC_NCM_DATA_ALTSETTING_NCM ;
 scalar_t__ cdc_ncm_comm_intf_is_mbim (struct usb_host_interface*) ;
 scalar_t__ prefer_mbim ;
 struct usb_host_interface* usb_altnum_to_altsetting (struct usb_interface*,int ) ;
 int usb_set_interface (int ,int ,int ) ;

u8 cdc_ncm_select_altsetting(struct usbnet *dev, struct usb_interface *intf)
{
 struct usb_host_interface *alt;
 if (prefer_mbim && intf->num_altsetting == 2) {
  alt = usb_altnum_to_altsetting(intf, CDC_NCM_COMM_ALTSETTING_MBIM);
  if (alt && cdc_ncm_comm_intf_is_mbim(alt) &&
      !usb_set_interface(dev->udev,
           intf->cur_altsetting->desc.bInterfaceNumber,
           CDC_NCM_COMM_ALTSETTING_MBIM))
   return CDC_NCM_DATA_ALTSETTING_MBIM;
 }
 return CDC_NCM_DATA_ALTSETTING_NCM;
}

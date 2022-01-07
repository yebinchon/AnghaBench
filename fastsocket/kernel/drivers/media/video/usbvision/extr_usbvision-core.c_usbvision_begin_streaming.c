
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {scalar_t__ isoc_mode; int vin_reg2_preset; } ;


 scalar_t__ ISOC_MODE_COMPRESS ;
 int USBVISION_NOHVALID ;
 int USBVISION_VIN_REG2 ;
 int usbvision_init_compression (struct usb_usbvision*) ;
 int usbvision_write_reg (struct usb_usbvision*,int ,int) ;

int usbvision_begin_streaming(struct usb_usbvision *usbvision)
{
 if (usbvision->isoc_mode == ISOC_MODE_COMPRESS)
  usbvision_init_compression(usbvision);
 return usbvision_write_reg(usbvision, USBVISION_VIN_REG2,
  USBVISION_NOHVALID | usbvision->vin_reg2_preset);
}

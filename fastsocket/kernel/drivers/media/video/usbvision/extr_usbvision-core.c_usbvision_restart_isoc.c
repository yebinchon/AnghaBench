
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int vin_reg2_preset; } ;


 int USBVISION_KEEP_BLANK ;
 int USBVISION_NOHVALID ;
 int USBVISION_PWR_REG ;
 int USBVISION_PWR_VID ;
 int USBVISION_RES2 ;
 int USBVISION_SSPND_EN ;
 int USBVISION_STATUS_REG ;
 int USBVISION_VIN_REG2 ;
 int usbvision_read_reg (struct usb_usbvision*,int ) ;
 int usbvision_write_reg (struct usb_usbvision*,int ,int) ;

int usbvision_restart_isoc(struct usb_usbvision *usbvision)
{
 int ret;

 ret = usbvision_write_reg(usbvision, USBVISION_PWR_REG,
         USBVISION_SSPND_EN | USBVISION_PWR_VID);
 if (ret < 0)
  return ret;
 ret = usbvision_write_reg(usbvision, USBVISION_PWR_REG,
         USBVISION_SSPND_EN | USBVISION_PWR_VID |
         USBVISION_RES2);
 if (ret < 0)
  return ret;
 ret = usbvision_write_reg(usbvision, USBVISION_VIN_REG2,
         USBVISION_KEEP_BLANK | USBVISION_NOHVALID |
      usbvision->vin_reg2_preset);
 if (ret < 0)
  return ret;


 while ((usbvision_read_reg(usbvision, USBVISION_STATUS_REG) & 0x01) != 1)
  ;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {scalar_t__ power; } ;


 int DBG_FUNC ;
 int PDEBUG (int ,char*,...) ;
 int USBVISION_PWR_REG ;
 int USBVISION_SSPND_EN ;
 int usbvision_write_reg (struct usb_usbvision*,int ,int ) ;

int usbvision_power_off(struct usb_usbvision *usbvision)
{
 int err_code = 0;

 PDEBUG(DBG_FUNC, "");

 err_code = usbvision_write_reg(usbvision, USBVISION_PWR_REG, USBVISION_SSPND_EN);
 if (err_code == 1)
  usbvision->power = 0;
 PDEBUG(DBG_FUNC, "%s: err_code %d", (err_code != 1) ? "ERROR" : "power is off", err_code);
 return err_code;
}

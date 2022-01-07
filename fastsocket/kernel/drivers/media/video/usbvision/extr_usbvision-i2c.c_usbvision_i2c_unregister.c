
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct usb_usbvision {TYPE_1__ i2c_adap; scalar_t__ registered_i2c; } ;


 int DBG_I2C ;
 int PDEBUG (int ,char*,int ) ;
 int i2c_del_adapter (TYPE_1__*) ;

int usbvision_i2c_unregister(struct usb_usbvision *usbvision)
{
 if (!usbvision->registered_i2c)
  return 0;

 i2c_del_adapter(&(usbvision->i2c_adap));
 usbvision->registered_i2c = 0;

 PDEBUG(DBG_I2C, "i2c bus for %s unregistered", usbvision->i2c_adap.name);

 return 0;
}

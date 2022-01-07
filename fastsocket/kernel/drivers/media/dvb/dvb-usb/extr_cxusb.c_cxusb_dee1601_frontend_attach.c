
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; int * fe; } ;
struct TYPE_2__ {int i2c_adap; int udev; } ;


 int CMD_DIGITAL ;
 int EIO ;
 int cxusb_ctrl_msg (TYPE_1__*,int ,int *,int ,int *,int ) ;
 int cxusb_dee1601_config ;
 int cxusb_zl10353_dee1601_config ;
 void* dvb_attach (int ,int *,int *) ;
 int err (char*) ;
 int mt352_attach ;
 scalar_t__ usb_set_interface (int ,int ,int ) ;
 int zl10353_attach ;

__attribute__((used)) static int cxusb_dee1601_frontend_attach(struct dvb_usb_adapter *adap)
{
 if (usb_set_interface(adap->dev->udev, 0, 0) < 0)
  err("set interface failed");

 cxusb_ctrl_msg(adap->dev, CMD_DIGITAL, ((void*)0), 0, ((void*)0), 0);

 if (((adap->fe = dvb_attach(mt352_attach, &cxusb_dee1601_config,
        &adap->dev->i2c_adap)) != ((void*)0)) ||
  ((adap->fe = dvb_attach(zl10353_attach,
     &cxusb_zl10353_dee1601_config,
     &adap->dev->i2c_adap)) != ((void*)0)))
  return 0;

 return -EIO;
}

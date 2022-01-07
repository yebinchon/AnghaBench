
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* dev; int * fe; } ;
struct TYPE_2__ {int i2c_adap; int udev; } ;


 int ENODEV ;
 int deb_info (char*) ;
 int * dvb_attach (int ,int *,int *) ;
 int err (char*) ;
 int tda10086_attach ;
 int tda10086_config ;
 scalar_t__ usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int ttusb2_frontend_tda10086_attach(struct dvb_usb_adapter *adap)
{
 if (usb_set_interface(adap->dev->udev,0,3) < 0)
  err("set interface to alts=3 failed");

 if ((adap->fe = dvb_attach(tda10086_attach, &tda10086_config, &adap->dev->i2c_adap)) == ((void*)0)) {
  deb_info("TDA10086 attach failed\n");
  return -ENODEV;
 }

 return 0;
}

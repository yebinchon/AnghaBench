
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int * fe; TYPE_1__* dev; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int ENODEV ;
 int au6610_zl10353_config ;
 int * dvb_attach (int ,int *,int *) ;
 int zl10353_attach ;

__attribute__((used)) static int au6610_zl10353_frontend_attach(struct dvb_usb_adapter *adap)
{
 adap->fe = dvb_attach(zl10353_attach, &au6610_zl10353_config,
  &adap->dev->i2c_adap);
 if (adap->fe == ((void*)0))
  return -ENODEV;

 return 0;
}

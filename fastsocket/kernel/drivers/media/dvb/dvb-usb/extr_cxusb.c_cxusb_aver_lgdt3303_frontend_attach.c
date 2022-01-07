
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int * fe; TYPE_1__* dev; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int EIO ;
 int cxusb_aver_lgdt3303_config ;
 int * dvb_attach (int ,int *,int *) ;
 int lgdt330x_attach ;

__attribute__((used)) static int cxusb_aver_lgdt3303_frontend_attach(struct dvb_usb_adapter *adap)
{
 adap->fe = dvb_attach(lgdt330x_attach, &cxusb_aver_lgdt3303_config,
         &adap->dev->i2c_adap);
 if (adap->fe != ((void*)0))
  return 0;

 return -EIO;
}

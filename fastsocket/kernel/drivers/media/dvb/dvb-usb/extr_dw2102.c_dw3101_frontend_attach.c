
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_adapter {int * fe; TYPE_1__* dev; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int EIO ;
 int * dvb_attach (int ,int *,int *,int) ;
 int dw3101_tda10023_config ;
 int info (char*) ;
 int tda10023_attach ;

__attribute__((used)) static int dw3101_frontend_attach(struct dvb_usb_adapter *d)
{
 d->fe = dvb_attach(tda10023_attach, &dw3101_tda10023_config,
    &d->dev->i2c_adap, 0x48);
 if (d->fe != ((void*)0)) {
  info("Attached tda10023!\n");
  return 0;
 }
 return -EIO;
}

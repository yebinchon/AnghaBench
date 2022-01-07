
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_3__* fe; TYPE_1__* dev; } ;
struct TYPE_5__ {void* set_voltage; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int i2c_adap; } ;


 int EIO ;
 int ds3000_attach ;
 void* dvb_attach (int ,TYPE_3__*,int,...) ;
 int dw2104_ds3000_config ;
 void* dw210x_set_voltage ;
 int earda_config ;
 int info (char*) ;
 int mt312_attach ;
 int stb6000_attach ;
 int stv0288_attach ;
 int zl10039_attach ;
 int zl313_config ;

__attribute__((used)) static int s6x0_frontend_attach(struct dvb_usb_adapter *d)
{
 d->fe = dvb_attach(mt312_attach, &zl313_config,
   &d->dev->i2c_adap);
 if (d->fe != ((void*)0)) {
  if (dvb_attach(zl10039_attach, d->fe, 0x60,
    &d->dev->i2c_adap)) {
   d->fe->ops.set_voltage = dw210x_set_voltage;
   info("Attached zl100313+zl10039!\n");
   return 0;
  }
 }

 d->fe = dvb_attach(stv0288_attach, &earda_config,
   &d->dev->i2c_adap);
 if (d->fe != ((void*)0)) {
  if (dvb_attach(stb6000_attach, d->fe, 0x61,
    &d->dev->i2c_adap)) {
   d->fe->ops.set_voltage = dw210x_set_voltage;
   info("Attached stv0288+stb6000!\n");
   return 0;
  }
 }

 d->fe = dvb_attach(ds3000_attach, &dw2104_ds3000_config,
   &d->dev->i2c_adap);
 if (d->fe != ((void*)0)) {
  d->fe->ops.set_voltage = dw210x_set_voltage;
  info("Attached ds3000+ds2020!\n");
  return 0;
 }

 return -EIO;
}

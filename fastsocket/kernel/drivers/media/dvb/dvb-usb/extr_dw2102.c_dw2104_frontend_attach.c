
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_3__* fe; TYPE_1__* dev; } ;
struct dvb_tuner_ops {int get_bandwidth; int set_bandwidth; int get_frequency; int set_frequency; } ;
struct TYPE_5__ {void* set_voltage; struct dvb_tuner_ops tuner_ops; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int i2c_adap; } ;


 int EIO ;
 int cx24116_attach ;
 int demod_probe ;
 int ds3000_attach ;
 void* dvb_attach (int ,TYPE_3__*,int *,...) ;
 int dw2104_config ;
 int dw2104_ds3000_config ;
 int dw2104_stv0900_config ;
 int dw2104_stv6110_config ;
 int dw2104a_stb6100_config ;
 int dw2104a_stv0900_config ;
 void* dw210x_set_voltage ;
 int info (char*) ;
 int stb6100_attach ;
 int stb6100_get_bandw ;
 int stb6100_get_freq ;
 int stb6100_set_bandw ;
 int stb6100_set_freq ;
 int stv0900_attach ;
 int stv6110_attach ;

__attribute__((used)) static int dw2104_frontend_attach(struct dvb_usb_adapter *d)
{
 struct dvb_tuner_ops *tuner_ops = ((void*)0);

 if (demod_probe & 4) {
  d->fe = dvb_attach(stv0900_attach, &dw2104a_stv0900_config,
    &d->dev->i2c_adap, 0);
  if (d->fe != ((void*)0)) {
   if (dvb_attach(stb6100_attach, d->fe,
     &dw2104a_stb6100_config,
     &d->dev->i2c_adap)) {
    tuner_ops = &d->fe->ops.tuner_ops;
    tuner_ops->set_frequency = stb6100_set_freq;
    tuner_ops->get_frequency = stb6100_get_freq;
    tuner_ops->set_bandwidth = stb6100_set_bandw;
    tuner_ops->get_bandwidth = stb6100_get_bandw;
    d->fe->ops.set_voltage = dw210x_set_voltage;
    info("Attached STV0900+STB6100!\n");
    return 0;
   }
  }
 }

 if (demod_probe & 2) {
  d->fe = dvb_attach(stv0900_attach, &dw2104_stv0900_config,
    &d->dev->i2c_adap, 0);
  if (d->fe != ((void*)0)) {
   if (dvb_attach(stv6110_attach, d->fe,
     &dw2104_stv6110_config,
     &d->dev->i2c_adap)) {
    d->fe->ops.set_voltage = dw210x_set_voltage;
    info("Attached STV0900+STV6110A!\n");
    return 0;
   }
  }
 }

 if (demod_probe & 1) {
  d->fe = dvb_attach(cx24116_attach, &dw2104_config,
    &d->dev->i2c_adap);
  if (d->fe != ((void*)0)) {
   d->fe->ops.set_voltage = dw210x_set_voltage;
   info("Attached cx24116!\n");
   return 0;
  }
 }

 d->fe = dvb_attach(ds3000_attach, &dw2104_ds3000_config,
   &d->dev->i2c_adap);
 if (d->fe != ((void*)0)) {
  d->fe->ops.set_voltage = dw210x_set_voltage;
  info("Attached DS3000!\n");
  return 0;
 }

 return -EIO;
}

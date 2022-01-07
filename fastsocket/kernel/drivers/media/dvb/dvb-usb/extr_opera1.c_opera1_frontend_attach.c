
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_3__* fe; TYPE_1__* dev; } ;
struct TYPE_5__ {int set_voltage; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int i2c_adap; } ;


 int EIO ;
 TYPE_3__* dvb_attach (int ,int *,int *) ;
 int info (char*) ;
 int opera1_set_voltage ;
 int opera1_stv0299_config ;
 int stv0299_attach ;

__attribute__((used)) static int opera1_frontend_attach(struct dvb_usb_adapter *d)
{
 if ((d->fe =
      dvb_attach(stv0299_attach, &opera1_stv0299_config,
   &d->dev->i2c_adap)) != ((void*)0)) {
  d->fe->ops.set_voltage = opera1_set_voltage;
  return 0;
 }
 info("not attached stv0299");
 return -EIO;
}

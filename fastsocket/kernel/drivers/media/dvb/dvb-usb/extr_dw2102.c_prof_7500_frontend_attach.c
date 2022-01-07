
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
 TYPE_3__* dvb_attach (int ,int *,int *,int ) ;
 int dw210x_set_voltage ;
 int info (char*) ;
 int prof_7500_stv0900_config ;
 int stv0900_attach ;

__attribute__((used)) static int prof_7500_frontend_attach(struct dvb_usb_adapter *d)
{
 d->fe = dvb_attach(stv0900_attach, &prof_7500_stv0900_config,
     &d->dev->i2c_adap, 0);
 if (d->fe == ((void*)0))
  return -EIO;
 d->fe->ops.set_voltage = dw210x_set_voltage;

 info("Attached STV0900+STB6100A!\n");

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_3__* fe; TYPE_1__* dev; } ;
struct TYPE_5__ {int * i2c_gate_ctrl; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int i2c_adap; } ;


 int EIO ;
 int dtv5100_zl10353_config ;
 TYPE_3__* dvb_attach (int ,int *,int *) ;
 int zl10353_attach ;

__attribute__((used)) static int dtv5100_frontend_attach(struct dvb_usb_adapter *adap)
{
 adap->fe = dvb_attach(zl10353_attach, &dtv5100_zl10353_config,
         &adap->dev->i2c_adap);
 if (adap->fe == ((void*)0))
  return -EIO;


 adap->fe->ops.i2c_gate_ctrl = ((void*)0);

 return 0;
}

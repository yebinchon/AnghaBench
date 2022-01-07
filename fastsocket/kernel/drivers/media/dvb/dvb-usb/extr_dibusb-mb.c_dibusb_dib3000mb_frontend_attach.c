
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_3__* fe; TYPE_1__* dev; struct dibusb_state* priv; } ;
struct dibusb_state {int ops; } ;
struct dib3000_config {int demod_address; } ;
struct TYPE_5__ {int i2c_gate_ctrl; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int i2c_adap; } ;


 int ENODEV ;
 int dib3000mb_attach ;
 int dib3000mb_i2c_gate_ctrl ;
 TYPE_3__* dvb_attach (int ,struct dib3000_config*,int *,int *) ;

__attribute__((used)) static int dibusb_dib3000mb_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dib3000_config demod_cfg;
 struct dibusb_state *st = adap->priv;

 demod_cfg.demod_address = 0x8;

 if ((adap->fe = dvb_attach(dib3000mb_attach, &demod_cfg,
       &adap->dev->i2c_adap, &st->ops)) == ((void*)0))
  return -ENODEV;

 adap->fe->ops.i2c_gate_ctrl = dib3000mb_i2c_gate_ctrl;

 return 0;
}

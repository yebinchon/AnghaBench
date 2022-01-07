
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct dvb_usb_adapter {int dev; } ;
struct dvb_frontend_parameters {int dummy; } ;
struct TYPE_5__ {int (* calc_regs ) (struct dvb_frontend*,struct dvb_frontend_parameters*,int *,int) ;} ;
struct TYPE_6__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; TYPE_1__* dvb; } ;
typedef int b ;
struct TYPE_4__ {struct dvb_usb_adapter* priv; } ;


 int USB_WRITE_TUNER ;
 int digitv_ctrl_msg (int ,int ,int ,int *,int,int *,int ) ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*,int *,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int digitv_nxt6000_tuner_set_params(struct dvb_frontend *fe, struct dvb_frontend_parameters *fep)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;
 u8 b[5];

 fe->ops.tuner_ops.calc_regs(fe, fep, b, sizeof(b));
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 return digitv_ctrl_msg(adap->dev, USB_WRITE_TUNER, 0, &b[1], 4, ((void*)0), 0);
}

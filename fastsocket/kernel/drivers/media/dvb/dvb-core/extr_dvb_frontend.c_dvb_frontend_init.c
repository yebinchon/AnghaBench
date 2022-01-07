
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* init ) (struct dvb_frontend*) ;} ;
struct TYPE_5__ {int name; } ;
struct TYPE_7__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_2__ tuner_ops; int (* init ) (struct dvb_frontend*) ;TYPE_1__ info; } ;
struct dvb_frontend {TYPE_3__ ops; int id; TYPE_4__* dvb; } ;
struct TYPE_8__ {int num; } ;


 int dprintk (char*,int ,int ,int ) ;
 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*,int) ;
 int stub3 (struct dvb_frontend*) ;
 int stub4 (struct dvb_frontend*,int) ;

__attribute__((used)) static void dvb_frontend_init(struct dvb_frontend *fe)
{
 dprintk ("DVB: initialising adapter %i frontend %i (%s)...\n",
   fe->dvb->num,
   fe->id,
   fe->ops.info.name);

 if (fe->ops.init)
  fe->ops.init(fe);
 if (fe->ops.tuner_ops.init) {
  if (fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 1);
  fe->ops.tuner_ops.init(fe);
  if (fe->ops.i2c_gate_ctrl)
   fe->ops.i2c_gate_ctrl(fe, 0);
 }
}

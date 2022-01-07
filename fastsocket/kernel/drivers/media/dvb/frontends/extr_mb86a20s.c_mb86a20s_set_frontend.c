
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mb86a20s_state {scalar_t__ need_init; } ;
struct dvb_frontend_parameters {int dummy; } ;
struct TYPE_3__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_4__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct mb86a20s_state* demodulator_priv; } ;


 int dprintk (char*) ;
 int mb86a20s_initfe (struct dvb_frontend*) ;
 int mb86a20s_reset_reception ;
 int mb86a20s_writeregdata (struct mb86a20s_state*,int ) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub3 (struct dvb_frontend*,int) ;
 int stub4 (struct dvb_frontend*,int) ;

__attribute__((used)) static int mb86a20s_set_frontend(struct dvb_frontend *fe,
 struct dvb_frontend_parameters *p)
{
 struct mb86a20s_state *state = fe->demodulator_priv;
 int rc;

 dprintk("\n");

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);
 dprintk("Calling tuner set parameters\n");
 fe->ops.tuner_ops.set_params(fe, p);
 if (state->need_init)
  mb86a20s_initfe(fe);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);
 rc = mb86a20s_writeregdata(state, mb86a20s_reset_reception);
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 return rc;
}

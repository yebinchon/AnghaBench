
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int symbol_rate; int fec_inner; } ;
struct TYPE_6__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int inversion; } ;
struct TYPE_8__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_7__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_4__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;


 int cx24110_set_fec (struct cx24110_state*,int ) ;
 int cx24110_set_inversion (struct cx24110_state*,int ) ;
 int cx24110_set_symbolrate (struct cx24110_state*,int ) ;
 int cx24110_writereg (struct cx24110_state*,int,int) ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub2 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int cx24110_set_frontend(struct dvb_frontend* fe, struct dvb_frontend_parameters *p)
{
 struct cx24110_state *state = fe->demodulator_priv;


 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe, p);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }

 cx24110_set_inversion (state, p->inversion);
 cx24110_set_fec (state, p->u.qpsk.fec_inner);
 cx24110_set_symbolrate (state, p->u.qpsk.symbol_rate);
 cx24110_writereg(state,0x04,0x05);

 return 0;
}

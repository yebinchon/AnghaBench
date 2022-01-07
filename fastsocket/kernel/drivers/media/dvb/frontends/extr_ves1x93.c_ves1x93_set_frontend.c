
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ves1x93_state {int inversion; } ;
struct TYPE_5__ {int symbol_rate; int fec_inner; } ;
struct TYPE_6__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {int inversion; TYPE_2__ u; } ;
struct TYPE_8__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_7__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_4__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; struct ves1x93_state* demodulator_priv; } ;


 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub2 (struct dvb_frontend*,int ) ;
 int ves1x93_set_fec (struct ves1x93_state*,int ) ;
 int ves1x93_set_inversion (struct ves1x93_state*,int ) ;
 int ves1x93_set_symbolrate (struct ves1x93_state*,int ) ;

__attribute__((used)) static int ves1x93_set_frontend(struct dvb_frontend* fe, struct dvb_frontend_parameters *p)
{
 struct ves1x93_state* state = fe->demodulator_priv;

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe, p);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }
 ves1x93_set_inversion (state, p->inversion);
 ves1x93_set_fec (state, p->u.qpsk.fec_inner);
 ves1x93_set_symbolrate (state, p->u.qpsk.symbol_rate);
 state->inversion = p->inversion;

 return 0;
}

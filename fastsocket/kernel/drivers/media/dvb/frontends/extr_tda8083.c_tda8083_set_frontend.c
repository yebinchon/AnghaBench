
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tda8083_state {int dummy; } ;
struct TYPE_5__ {int symbol_rate; int fec_inner; } ;
struct TYPE_6__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int inversion; } ;
struct TYPE_7__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_8__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_3__ tuner_ops; } ;
struct dvb_frontend {TYPE_4__ ops; struct tda8083_state* demodulator_priv; } ;


 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub2 (struct dvb_frontend*,int ) ;
 int tda8083_set_fec (struct tda8083_state*,int ) ;
 int tda8083_set_inversion (struct tda8083_state*,int ) ;
 int tda8083_set_symbolrate (struct tda8083_state*,int ) ;
 int tda8083_writereg (struct tda8083_state*,int,int) ;

__attribute__((used)) static int tda8083_set_frontend(struct dvb_frontend* fe, struct dvb_frontend_parameters *p)
{
 struct tda8083_state* state = fe->demodulator_priv;

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe, p);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }

 tda8083_set_inversion (state, p->inversion);
 tda8083_set_fec (state, p->u.qpsk.fec_inner);
 tda8083_set_symbolrate (state, p->u.qpsk.symbol_rate);

 tda8083_writereg (state, 0x00, 0x3c);
 tda8083_writereg (state, 0x00, 0x04);

 return 0;
}

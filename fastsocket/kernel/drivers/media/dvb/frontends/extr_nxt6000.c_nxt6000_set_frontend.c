
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nxt6000_state {int dummy; } ;
struct TYPE_7__ {int transmission_mode; int guard_interval; int bandwidth; } ;
struct TYPE_8__ {TYPE_3__ ofdm; } ;
struct dvb_frontend_parameters {int inversion; TYPE_4__ u; } ;
struct TYPE_5__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_6__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct nxt6000_state* demodulator_priv; } ;


 int msleep (int) ;
 int nxt6000_set_bandwidth (struct nxt6000_state*,int ) ;
 int nxt6000_set_guard_interval (struct nxt6000_state*,int ) ;
 int nxt6000_set_inversion (struct nxt6000_state*,int ) ;
 int nxt6000_set_transmission_mode (struct nxt6000_state*,int ) ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub2 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int nxt6000_set_frontend(struct dvb_frontend* fe, struct dvb_frontend_parameters *param)
{
 struct nxt6000_state* state = fe->demodulator_priv;
 int result;

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe, param);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }

 if ((result = nxt6000_set_bandwidth(state, param->u.ofdm.bandwidth)) < 0)
  return result;
 if ((result = nxt6000_set_guard_interval(state, param->u.ofdm.guard_interval)) < 0)
  return result;
 if ((result = nxt6000_set_transmission_mode(state, param->u.ofdm.transmission_mode)) < 0)
  return result;
 if ((result = nxt6000_set_inversion(state, param->inversion)) < 0)
  return result;

 msleep(500);
 return 0;
}

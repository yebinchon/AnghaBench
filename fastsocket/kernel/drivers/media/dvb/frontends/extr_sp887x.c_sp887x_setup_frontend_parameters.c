
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct sp887x_state {int dummy; } ;
struct TYPE_7__ {scalar_t__ bandwidth; scalar_t__ transmission_mode; } ;
struct TYPE_8__ {TYPE_3__ ofdm; } ;
struct dvb_frontend_parameters {unsigned int frequency; TYPE_4__ u; } ;
struct TYPE_5__ {int (* get_frequency ) (struct dvb_frontend*,unsigned int*) ;int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_6__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct sp887x_state* demodulator_priv; } ;


 scalar_t__ BANDWIDTH_6_MHZ ;
 scalar_t__ BANDWIDTH_7_MHZ ;
 scalar_t__ BANDWIDTH_8_MHZ ;
 int EINVAL ;
 scalar_t__ TRANSMISSION_MODE_2K ;
 int configure_reg0xc05 (struct dvb_frontend_parameters*,int*) ;
 int sp887x_correct_offsets (struct sp887x_state*,struct dvb_frontend_parameters*,unsigned int) ;
 int sp887x_microcontroller_start (struct sp887x_state*) ;
 int sp887x_microcontroller_stop (struct sp887x_state*) ;
 int sp887x_readreg (struct sp887x_state*,int) ;
 int sp887x_writereg (struct sp887x_state*,int,int) ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub2 (struct dvb_frontend*,int ) ;
 int stub3 (struct dvb_frontend*,unsigned int*) ;
 int stub4 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int sp887x_setup_frontend_parameters (struct dvb_frontend* fe,
          struct dvb_frontend_parameters *p)
{
 struct sp887x_state* state = fe->demodulator_priv;
 unsigned actual_freq;
 int err;
 u16 val, reg0xc05;

 if (p->u.ofdm.bandwidth != BANDWIDTH_8_MHZ &&
     p->u.ofdm.bandwidth != BANDWIDTH_7_MHZ &&
     p->u.ofdm.bandwidth != BANDWIDTH_6_MHZ)
  return -EINVAL;

 if ((err = configure_reg0xc05(p, &reg0xc05)))
  return err;

 sp887x_microcontroller_stop(state);


 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe, p);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }
 if (fe->ops.tuner_ops.get_frequency) {
  fe->ops.tuner_ops.get_frequency(fe, &actual_freq);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 } else {
  actual_freq = p->frequency;
 }


 sp887x_readreg(state, 0x200);

 sp887x_correct_offsets(state, p, actual_freq);


 if (p->u.ofdm.bandwidth == BANDWIDTH_6_MHZ)
  val = 2;
 else if (p->u.ofdm.bandwidth == BANDWIDTH_7_MHZ)
  val = 1;
 else
  val = 0;

 sp887x_writereg(state, 0x311, val);


 if (p->u.ofdm.transmission_mode == TRANSMISSION_MODE_2K)
  sp887x_writereg(state, 0x338, 0x000);
 else
  sp887x_writereg(state, 0x338, 0x001);

 sp887x_writereg(state, 0xc05, reg0xc05);

 if (p->u.ofdm.bandwidth == BANDWIDTH_6_MHZ)
  val = 2 << 3;
 else if (p->u.ofdm.bandwidth == BANDWIDTH_7_MHZ)
  val = 3 << 3;
 else
  val = 0 << 3;




 sp887x_writereg(state, 0xf14, 0x160 | val);
 sp887x_writereg(state, 0xf15, 0x000);

 sp887x_microcontroller_start(state);
 return 0;
}

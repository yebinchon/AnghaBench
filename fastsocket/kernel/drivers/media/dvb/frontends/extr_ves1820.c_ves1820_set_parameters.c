
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct ves1820_state {int pwm; TYPE_5__* config; } ;
struct TYPE_8__ {int modulation; int symbol_rate; } ;
struct TYPE_9__ {TYPE_3__ qam; } ;
struct dvb_frontend_parameters {int inversion; TYPE_4__ u; } ;
struct TYPE_6__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_7__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct ves1820_state* demodulator_priv; } ;
struct TYPE_10__ {scalar_t__ selagc; } ;


 int EINVAL ;
 int QAM_16 ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub2 (struct dvb_frontend*,int ) ;
 int* ves1820_inittab ;
 int ves1820_set_symbolrate (struct ves1820_state*,int ) ;
 int ves1820_setup_reg0 (struct ves1820_state*,int const,int ) ;
 int ves1820_writereg (struct ves1820_state*,int,int const) ;

__attribute__((used)) static int ves1820_set_parameters(struct dvb_frontend* fe, struct dvb_frontend_parameters *p)
{
 struct ves1820_state* state = fe->demodulator_priv;
 static const u8 reg0x00[] = { 0x00, 0x04, 0x08, 0x0c, 0x10 };
 static const u8 reg0x01[] = { 140, 140, 106, 100, 92 };
 static const u8 reg0x05[] = { 135, 100, 70, 54, 38 };
 static const u8 reg0x08[] = { 162, 116, 67, 52, 35 };
 static const u8 reg0x09[] = { 145, 150, 106, 126, 107 };
 int real_qam = p->u.qam.modulation - QAM_16;

 if (real_qam < 0 || real_qam > 4)
  return -EINVAL;

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe, p);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }

 ves1820_set_symbolrate(state, p->u.qam.symbol_rate);
 ves1820_writereg(state, 0x34, state->pwm);

 ves1820_writereg(state, 0x01, reg0x01[real_qam]);
 ves1820_writereg(state, 0x05, reg0x05[real_qam]);
 ves1820_writereg(state, 0x08, reg0x08[real_qam]);
 ves1820_writereg(state, 0x09, reg0x09[real_qam]);

 ves1820_setup_reg0(state, reg0x00[real_qam], p->inversion);
 ves1820_writereg(state, 2, ves1820_inittab[2] | (state->config->selagc ? 0x08 : 0));
 return 0;
}

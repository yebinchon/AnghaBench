
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tda10023_state {int dummy; } ;
struct TYPE_7__ {int modulation; int symbol_rate; } ;
struct TYPE_8__ {TYPE_3__ qam; } ;
struct dvb_frontend_parameters {TYPE_4__ u; } ;
struct TYPE_5__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_6__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct tda10023_state* demodulator_priv; } ;


 int EINVAL ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub2 (struct dvb_frontend*,int ) ;
 int tda10023_set_symbolrate (struct tda10023_state*,int ) ;
 int tda10023_setup_reg0 (struct tda10023_state*,int) ;
 int tda10023_writebit (struct tda10023_state*,int,int,int) ;
 int tda10023_writereg (struct tda10023_state*,int,int) ;

__attribute__((used)) static int tda10023_set_parameters (struct dvb_frontend *fe,
       struct dvb_frontend_parameters *p)
{
 struct tda10023_state* state = fe->demodulator_priv;

 static int qamvals[6][6] = {

  { (5<<2), 0x78, 0x8c, 0x96, 0x78, 0x4c },
  { (0<<2), 0x87, 0xa2, 0x91, 0x8c, 0x57 },
  { (1<<2), 0x64, 0x74, 0x96, 0x8c, 0x57 },
  { (2<<2), 0x46, 0x43, 0x6a, 0x6a, 0x44 },
  { (3<<2), 0x36, 0x34, 0x7e, 0x78, 0x4c },
  { (4<<2), 0x26, 0x23, 0x6c, 0x5c, 0x3c },
 };

 int qam = p->u.qam.modulation;

 if (qam < 0 || qam > 5)
  return -EINVAL;

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe, p);
  if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
 }

 tda10023_set_symbolrate (state, p->u.qam.symbol_rate);
 tda10023_writereg (state, 0x05, qamvals[qam][1]);
 tda10023_writereg (state, 0x08, qamvals[qam][2]);
 tda10023_writereg (state, 0x09, qamvals[qam][3]);
 tda10023_writereg (state, 0xb4, qamvals[qam][4]);
 tda10023_writereg (state, 0xb6, qamvals[qam][5]);



 tda10023_writebit (state, 0x04, 0x40, 0x40);
 tda10023_setup_reg0 (state, qamvals[qam][0]);

 return 0;
}

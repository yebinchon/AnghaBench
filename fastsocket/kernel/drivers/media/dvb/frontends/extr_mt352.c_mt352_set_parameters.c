
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ no_tuner; } ;
struct mt352_state {TYPE_2__ config; } ;
struct dvb_ofdm_parameters {int code_rate_HP; int code_rate_LP; int hierarchy_information; int constellation; int transmission_mode; int guard_interval; int bandwidth; } ;
struct TYPE_5__ {struct dvb_ofdm_parameters ofdm; } ;
struct dvb_frontend_parameters {TYPE_1__ u; } ;
struct TYPE_7__ {int (* calc_regs ) (struct dvb_frontend*,struct dvb_frontend_parameters*,unsigned char*,int) ;int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_8__ {TYPE_3__ tuner_ops; int (* i2c_gate_ctrl ) (struct dvb_frontend*,int ) ;} ;
struct dvb_frontend {TYPE_4__ ops; struct mt352_state* demodulator_priv; } ;
typedef int buf ;


 int EINVAL ;
 unsigned char TPS_GIVEN_1 ;



 int _mt352_write (struct dvb_frontend*,unsigned char*,int) ;
 unsigned char lsb (unsigned int) ;
 unsigned char msb (unsigned int) ;
 int mt352_calc_input_freq (struct mt352_state*,unsigned char*) ;
 int mt352_calc_nominal_rate (struct mt352_state*,int ,unsigned char*) ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub2 (struct dvb_frontend*,int ) ;
 int stub3 (struct dvb_frontend*,struct dvb_frontend_parameters*,unsigned char*,int) ;

__attribute__((used)) static int mt352_set_parameters(struct dvb_frontend* fe,
    struct dvb_frontend_parameters *param)
{
 struct mt352_state* state = fe->demodulator_priv;
 unsigned char buf[13];
 static unsigned char tuner_go[] = { 0x5d, 0x01 };
 static unsigned char fsm_go[] = { 0x5e, 0x01 };
 unsigned int tps = 0;
 struct dvb_ofdm_parameters *op = &param->u.ofdm;

 switch (op->code_rate_HP) {
  case 150:
   tps |= (1 << 7);
   break;
  case 149:
   tps |= (2 << 7);
   break;
  case 148:
   tps |= (3 << 7);
   break;
  case 147:
   tps |= (4 << 7);
   break;
  case 151:
  case 146:
   break;
  default:
   return -EINVAL;
 }

 switch (op->code_rate_LP) {
  case 150:
   tps |= (1 << 4);
   break;
  case 149:
   tps |= (2 << 4);
   break;
  case 148:
   tps |= (3 << 4);
   break;
  case 147:
   tps |= (4 << 4);
   break;
  case 151:
  case 146:
   break;
  case 145:
   if (op->hierarchy_information == 136 ||
       op->hierarchy_information == 135)
    break;
  default:
   return -EINVAL;
 }

 switch (op->constellation) {
  case 131:
   break;
  case 132:
  case 134:
   tps |= (1 << 13);
   break;
  case 133:
   tps |= (2 << 13);
   break;
  default:
   return -EINVAL;
 }

 switch (op->transmission_mode) {
  case 130:
  case 128:
   break;
  case 129:
   tps |= (1 << 0);
   break;
  default:
   return -EINVAL;
 }

 switch (op->guard_interval) {
  case 143:
  case 140:
   break;
  case 144:
   tps |= (1 << 2);
   break;
  case 141:
   tps |= (2 << 2);
   break;
  case 142:
   tps |= (3 << 2);
   break;
  default:
   return -EINVAL;
 }

 switch (op->hierarchy_information) {
  case 136:
  case 135:
   break;
  case 139:
   tps |= (1 << 10);
   break;
  case 138:
   tps |= (2 << 10);
   break;
  case 137:
   tps |= (3 << 10);
   break;
  default:
   return -EINVAL;
 }


 buf[0] = TPS_GIVEN_1;

 buf[1] = msb(tps);
 buf[2] = lsb(tps);

 buf[3] = 0x50;


 mt352_calc_nominal_rate(state, op->bandwidth, buf+4);
 mt352_calc_input_freq(state, buf+6);

 if (state->config.no_tuner) {
  if (fe->ops.tuner_ops.set_params) {
   fe->ops.tuner_ops.set_params(fe, param);
   if (fe->ops.i2c_gate_ctrl)
    fe->ops.i2c_gate_ctrl(fe, 0);
  }

  _mt352_write(fe, buf, 8);
  _mt352_write(fe, fsm_go, 2);
 } else {
  if (fe->ops.tuner_ops.calc_regs) {
   fe->ops.tuner_ops.calc_regs(fe, param, buf+8, 5);
   buf[8] <<= 1;
   _mt352_write(fe, buf, sizeof(buf));
   _mt352_write(fe, tuner_go, 2);
  }
 }

 return 0;
}

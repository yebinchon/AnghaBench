
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lgdt3305_state {TYPE_3__* cfg; } ;
struct TYPE_4__ {int modulation; } ;
struct TYPE_5__ {TYPE_1__ vsb; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;
struct TYPE_6__ {int demod_chip; } ;


 int EINVAL ;


 int LGDT3305_AGC_CTRL_1 ;
 int LGDT3305_AGC_CTRL_4 ;



 int lg_dbg (char*,int,int) ;
 int lgdt3305_rfagc_loop (struct lgdt3305_state*,struct dvb_frontend_parameters*) ;
 int lgdt3305_set_reg_bit (struct lgdt3305_state*,int,int,int) ;
 int lgdt3305_write_reg (struct lgdt3305_state*,int,int) ;

__attribute__((used)) static int lgdt3305_agc_setup(struct lgdt3305_state *state,
         struct dvb_frontend_parameters *param)
{
 int lockdten, acqen;

 switch (param->u.vsb.modulation) {
 case 128:
  lockdten = 0;
  acqen = 0;
  break;
 case 129:
 case 130:
  lockdten = 1;
  acqen = 1;
  break;
 default:
  return -EINVAL;
 }

 lg_dbg("lockdten = %d, acqen = %d\n", lockdten, acqen);


 switch (state->cfg->demod_chip) {
 case 132:
  lgdt3305_write_reg(state, 0x0314, 0xe1 | lockdten << 1);
  lgdt3305_set_reg_bit(state, 0x030e, 2, acqen);
  break;
 case 131:
  lgdt3305_write_reg(state, LGDT3305_AGC_CTRL_4, 0xe1 | lockdten << 1);
  lgdt3305_set_reg_bit(state, LGDT3305_AGC_CTRL_1, 2, acqen);
  break;
 default:
  return -EINVAL;
 }

 return lgdt3305_rfagc_loop(state, param);
}

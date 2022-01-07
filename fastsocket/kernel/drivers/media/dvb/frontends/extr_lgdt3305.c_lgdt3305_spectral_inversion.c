
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lgdt3305_state {int dummy; } ;
struct TYPE_3__ {int modulation; } ;
struct TYPE_4__ {TYPE_1__ vsb; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;


 int EINVAL ;
 int LGDT3305_CR_CTRL_7 ;
 int LGDT3305_FEC_BLOCK_CTRL ;



 int lg_dbg (char*,int) ;
 int lgdt3305_write_reg (struct lgdt3305_state*,int ,int) ;

__attribute__((used)) static int lgdt3305_spectral_inversion(struct lgdt3305_state *state,
           struct dvb_frontend_parameters *param,
           int inversion)
{
 int ret;

 lg_dbg("(%d)\n", inversion);

 switch (param->u.vsb.modulation) {
 case 128:
  ret = lgdt3305_write_reg(state, LGDT3305_CR_CTRL_7,
      inversion ? 0xf9 : 0x79);
  break;
 case 129:
 case 130:
  ret = lgdt3305_write_reg(state, LGDT3305_FEC_BLOCK_CTRL,
      inversion ? 0xfd : 0xff);
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}

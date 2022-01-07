
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct lgdt3305_state {int dummy; } ;
struct TYPE_3__ {int modulation; } ;
struct TYPE_4__ {TYPE_1__ vsb; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;


 int EINVAL ;
 int LGDT3305_GEN_CTRL_1 ;



 int lg_dbg (char*) ;
 scalar_t__ lg_fail (int) ;
 int lgdt3305_read_reg (struct lgdt3305_state*,int ,int*) ;
 int lgdt3305_write_reg (struct lgdt3305_state*,int ,int) ;

__attribute__((used)) static int lgdt3305_set_modulation(struct lgdt3305_state *state,
       struct dvb_frontend_parameters *param)
{
 u8 opermode;
 int ret;

 lg_dbg("\n");

 ret = lgdt3305_read_reg(state, LGDT3305_GEN_CTRL_1, &opermode);
 if (lg_fail(ret))
  goto fail;

 opermode &= ~0x03;

 switch (param->u.vsb.modulation) {
 case 128:
  opermode |= 0x03;
  break;
 case 129:
  opermode |= 0x00;
  break;
 case 130:
  opermode |= 0x01;
  break;
 default:
  return -EINVAL;
 }
 ret = lgdt3305_write_reg(state, LGDT3305_GEN_CTRL_1, opermode);
fail:
 return ret;
}

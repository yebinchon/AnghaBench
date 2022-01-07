
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct lgdt3305_state {int dummy; } ;
struct TYPE_3__ {int modulation; } ;
struct TYPE_4__ {TYPE_1__ vsb; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;


 int EINVAL ;
 int LGDT3305_DGTL_AGC_REF_1 ;
 int LGDT3305_DGTL_AGC_REF_2 ;



 int lg_dbg (char*,int) ;
 int lgdt3305_write_reg (struct lgdt3305_state*,int ,int) ;

__attribute__((used)) static int lgdt3305_passband_digital_agc(struct lgdt3305_state *state,
      struct dvb_frontend_parameters *param)
{
 u16 agc_ref;

 switch (param->u.vsb.modulation) {
 case 128:
  agc_ref = 0x32c4;
  break;
 case 129:
  agc_ref = 0x2a00;
  break;
 case 130:
  agc_ref = 0x2a80;
  break;
 default:
  return -EINVAL;
 }

 lg_dbg("agc ref: 0x%04x\n", agc_ref);

 lgdt3305_write_reg(state, LGDT3305_DGTL_AGC_REF_1, agc_ref >> 8);
 lgdt3305_write_reg(state, LGDT3305_DGTL_AGC_REF_2, agc_ref & 0xff);

 return 0;
}

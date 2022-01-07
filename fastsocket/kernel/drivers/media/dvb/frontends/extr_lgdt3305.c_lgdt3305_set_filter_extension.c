
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



 int lg_dbg (char*,int) ;
 int lgdt3305_set_reg_bit (struct lgdt3305_state*,int,int,int) ;

__attribute__((used)) static int lgdt3305_set_filter_extension(struct lgdt3305_state *state,
      struct dvb_frontend_parameters *param)
{
 int val;

 switch (param->u.vsb.modulation) {
 case 128:
  val = 0;
  break;
 case 129:
 case 130:
  val = 1;
  break;
 default:
  return -EINVAL;
 }
 lg_dbg("val = %d\n", val);

 return lgdt3305_set_reg_bit(state, 0x043f, 2, val);
}

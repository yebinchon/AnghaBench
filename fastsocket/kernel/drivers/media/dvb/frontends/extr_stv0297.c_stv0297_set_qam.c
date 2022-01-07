
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0297_state {int dummy; } ;
typedef int fe_modulation_t ;


 int EINVAL ;





 int stv0297_writereg_mask (struct stv0297_state*,int,int,int) ;

__attribute__((used)) static int stv0297_set_qam(struct stv0297_state *state, fe_modulation_t modulation)
{
 int val = 0;

 switch (modulation) {
 case 131:
  val = 0;
  break;

 case 129:
  val = 1;
  break;

 case 128:
  val = 4;
  break;

 case 132:
  val = 2;
  break;

 case 130:
  val = 3;
  break;

 default:
  return -EINVAL;
 }

 stv0297_writereg_mask(state, 0x00, 0x70, val << 4);

 return 0;
}

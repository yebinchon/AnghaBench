
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0297_state {int dummy; } ;
typedef int fe_spectral_inversion_t ;


 int EINVAL ;


 int stv0297_writereg_mask (struct stv0297_state*,int,int,int) ;

__attribute__((used)) static int stv0297_set_inversion(struct stv0297_state *state, fe_spectral_inversion_t inversion)
{
 int val = 0;

 switch (inversion) {
 case 129:
  val = 0;
  break;

 case 128:
  val = 1;
  break;

 default:
  return -EINVAL;
 }

 stv0297_writereg_mask(state, 0x83, 0x08, val << 3);

 return 0;
}

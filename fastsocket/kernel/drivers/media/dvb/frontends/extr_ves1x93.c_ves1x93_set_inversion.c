
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ves1x93_state {int* init_1x93_tab; } ;
typedef int fe_spectral_inversion_t ;


 int EINVAL ;



 int ves1x93_writereg (struct ves1x93_state*,int,int) ;

__attribute__((used)) static int ves1x93_set_inversion (struct ves1x93_state* state, fe_spectral_inversion_t inversion)
{
 u8 val;






 switch (inversion) {
 case 129:
  val = 0xc0;
  break;
 case 128:
  val = 0x80;
  break;
 case 130:
  val = 0x00;
  break;
 default:
  return -EINVAL;
 }

 return ves1x93_writereg (state, 0x0c, (state->init_1x93_tab[0x0c] & 0x3f) | val);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {int inversion; int* tx_tuna; } ;
typedef int fe_spectral_inversion_t ;


 int EINVAL ;



__attribute__((used)) static int dst_set_inversion(struct dst_state *state, fe_spectral_inversion_t inversion)
{
 state->inversion = inversion;
 switch (inversion) {
 case 129:
  state->tx_tuna[8] &= ~0x80;
  break;
 case 128:
  state->tx_tuna[8] |= 0x80;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stv090x_state {int modulation; int srate; TYPE_1__* internal; } ;
struct stv090x_short_frame_crloop {int crl_2; int crl_5; int crl_10; int crl_20; int crl_30; } ;
typedef size_t s32 ;
struct TYPE_2__ {int dev_ver; } ;






 struct stv090x_short_frame_crloop* stv090x_s2_short_crl_cut20 ;
 struct stv090x_short_frame_crloop* stv090x_s2_short_crl_cut30 ;

__attribute__((used)) static u8 stv090x_optimize_carloop_short(struct stv090x_state *state)
{
 struct stv090x_short_frame_crloop *short_crl = ((void*)0);
 s32 index = 0;
 u8 aclc = 0x0b;

 switch (state->modulation) {
 case 128:
 default:
  index = 0;
  break;
 case 129:
  index = 1;
  break;
 case 131:
  index = 2;
  break;
 case 130:
  index = 3;
  break;
 }

 if (state->internal->dev_ver >= 0x30) {

  short_crl = stv090x_s2_short_crl_cut30;
 } else {

  short_crl = stv090x_s2_short_crl_cut20;
 }

 if (state->srate <= 3000000)
  aclc = short_crl[index].crl_2;
 else if (state->srate <= 7000000)
  aclc = short_crl[index].crl_5;
 else if (state->srate <= 15000000)
  aclc = short_crl[index].crl_10;
 else if (state->srate <= 25000000)
  aclc = short_crl[index].crl_20;
 else
  aclc = short_crl[index].crl_30;

 return aclc;
}

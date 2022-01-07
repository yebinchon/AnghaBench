
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv090x_state {int fec; } ;


 int STV090x_GETFIELD_Px (int,int ) ;
 int STV090x_PR12 ;
 int STV090x_PR23 ;
 int STV090x_PR34 ;
 int STV090x_PR56 ;
 int STV090x_PR67 ;
 int STV090x_PR78 ;
 int STV090x_PRERR ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int VITCURPUN ;
 int VIT_CURPUN_FIELD ;

__attribute__((used)) static int stv090x_get_viterbi(struct stv090x_state *state)
{
 u32 reg, rate;

 reg = STV090x_READ_DEMOD(state, VITCURPUN);
 rate = STV090x_GETFIELD_Px(reg, VIT_CURPUN_FIELD);

 switch (rate) {
 case 13:
  state->fec = STV090x_PR12;
  break;

 case 18:
  state->fec = STV090x_PR23;
  break;

 case 21:
  state->fec = STV090x_PR34;
  break;

 case 24:
  state->fec = STV090x_PR56;
  break;

 case 25:
  state->fec = STV090x_PR67;
  break;

 case 26:
  state->fec = STV090x_PR78;
  break;

 default:
  state->fec = STV090x_PRERR;
  break;
 }

 return 0;
}

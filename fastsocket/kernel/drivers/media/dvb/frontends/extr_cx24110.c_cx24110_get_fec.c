
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx24110_state {int dummy; } ;
typedef scalar_t__ fe_code_rate_t ;


 scalar_t__ FEC_1_2 ;
 scalar_t__ FEC_NONE ;
 int cx24110_readreg (struct cx24110_state*,int) ;

__attribute__((used)) static fe_code_rate_t cx24110_get_fec (struct cx24110_state* state)
{
 int i;

 i=cx24110_readreg(state,0x22)&0x0f;
 if(!(i&0x08)) {
  return FEC_1_2 + i - 1;
 } else {




    return FEC_NONE;
 }
}

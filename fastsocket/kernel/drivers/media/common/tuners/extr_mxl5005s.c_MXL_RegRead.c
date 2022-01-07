
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct mxl5005s_state {TYPE_1__* TunerRegs; } ;
struct dvb_frontend {struct mxl5005s_state* tuner_priv; } ;
struct TYPE_2__ {scalar_t__ Reg_Num; scalar_t__ Reg_Val; } ;



__attribute__((used)) static u16 MXL_RegRead(struct dvb_frontend *fe, u8 RegNum, u8 *RegVal)
{
 struct mxl5005s_state *state = fe->tuner_priv;
 int i ;

 for (i = 0; i < 104; i++) {
  if (RegNum == state->TunerRegs[i].Reg_Num) {
   *RegVal = (u8)(state->TunerRegs[i].Reg_Val);
   return 0;
  }
 }

 return 1;
}

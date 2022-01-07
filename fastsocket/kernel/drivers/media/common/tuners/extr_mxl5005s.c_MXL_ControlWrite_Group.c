
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
typedef int u16 ;
struct mxl5005s_state {int Init_Ctrl_Num; int CH_Ctrl_Num; int MXL_Ctrl_Num; TYPE_3__* MXL_Ctrl; TYPE_2__* CH_Ctrl; TYPE_1__* Init_Ctrl; } ;
struct dvb_frontend {struct mxl5005s_state* tuner_priv; } ;
struct TYPE_6__ {int Ctrl_Num; int size; int* val; scalar_t__* bit; scalar_t__* addr; } ;
struct TYPE_5__ {int Ctrl_Num; int size; int* val; scalar_t__* bit; scalar_t__* addr; } ;
struct TYPE_4__ {int Ctrl_Num; int size; int* val; scalar_t__* bit; scalar_t__* addr; } ;


 int MXL_RegWriteBit (struct dvb_frontend*,void*,void*,void*) ;

__attribute__((used)) static u16 MXL_ControlWrite_Group(struct dvb_frontend *fe, u16 controlNum,
 u32 value, u16 controlGroup)
{
 struct mxl5005s_state *state = fe->tuner_priv;
 u16 i, j, k;
 u32 highLimit;
 u32 ctrlVal;

 if (controlGroup == 1) {

  for (i = 0; i < state->Init_Ctrl_Num; i++) {

   if (controlNum == state->Init_Ctrl[i].Ctrl_Num) {

    highLimit = 1 << state->Init_Ctrl[i].size;
    if (value < highLimit) {
     for (j = 0; j < state->Init_Ctrl[i].size; j++) {
      state->Init_Ctrl[i].val[j] = (u8)((value >> j) & 0x01);
      MXL_RegWriteBit(fe, (u8)(state->Init_Ctrl[i].addr[j]),
       (u8)(state->Init_Ctrl[i].bit[j]),
       (u8)((value>>j) & 0x01));
     }
     ctrlVal = 0;
     for (k = 0; k < state->Init_Ctrl[i].size; k++)
      ctrlVal += state->Init_Ctrl[i].val[k] * (1 << k);
    } else
     return -1;
   }
  }
 }
 if (controlGroup == 2) {

  for (i = 0; i < state->CH_Ctrl_Num; i++) {

   if (controlNum == state->CH_Ctrl[i].Ctrl_Num) {

    highLimit = 1 << state->CH_Ctrl[i].size;
    if (value < highLimit) {
     for (j = 0; j < state->CH_Ctrl[i].size; j++) {
      state->CH_Ctrl[i].val[j] = (u8)((value >> j) & 0x01);
      MXL_RegWriteBit(fe, (u8)(state->CH_Ctrl[i].addr[j]),
       (u8)(state->CH_Ctrl[i].bit[j]),
       (u8)((value>>j) & 0x01));
     }
     ctrlVal = 0;
     for (k = 0; k < state->CH_Ctrl[i].size; k++)
      ctrlVal += state->CH_Ctrl[i].val[k] * (1 << k);
    } else
     return -1;
   }
  }
 }
 return 0 ;
}

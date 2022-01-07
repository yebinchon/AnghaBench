
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl5005s_state {int Mode; scalar_t__ IF_Mode; int Chan_Bandwidth; scalar_t__ IF_OUT; scalar_t__ IF_LO; } ;
struct dvb_frontend {struct mxl5005s_state* tuner_priv; } ;



__attribute__((used)) static void MXL_SynthIFLO_Calc(struct dvb_frontend *fe)
{
 struct mxl5005s_state *state = fe->tuner_priv;
 if (state->Mode == 1)
  state->IF_LO = state->IF_OUT;
 else {
  if (state->IF_Mode == 0)
   state->IF_LO = state->IF_OUT + 400000;
  else
   state->IF_LO = state->IF_OUT + state->Chan_Bandwidth/2;
 }
}

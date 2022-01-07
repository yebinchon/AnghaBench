
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dib0090_state {int adc_diff; } ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;





 int CT_TUNER_STEP_5 ;
 int INTERN_WAIT ;
 int dib0090_read_reg (struct dib0090_state*,int) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;

__attribute__((used)) static int dib0090_get_offset(struct dib0090_state *state, enum frontend_tune_state *tune_state)
{
 int ret = INTERN_WAIT * 10;

 switch (*tune_state) {
 case 130:

  dib0090_write_reg(state, 0x1f, 0x7);
  *tune_state = 129;
  break;

 case 129:
  state->adc_diff = dib0090_read_reg(state, 0x1d);


  dib0090_write_reg(state, 0x1f, 0x4);
  *tune_state = 128;
  break;

 case 128:
  state->adc_diff -= dib0090_read_reg(state, 0x1d);
  *tune_state = CT_TUNER_STEP_5;
  ret = 0;
  break;

 default:
  break;
 }

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dst_state* demodulator_priv; } ;
struct dst_state {int tone; scalar_t__ dst_type; int type_flags; int* tx_tuna; } ;
typedef int fe_sec_tone_mode_t ;


 int DST_TYPE_HAS_OBS_REGS ;
 scalar_t__ DST_TYPE_IS_SAT ;
 int EINVAL ;
 int EOPNOTSUPP ;


 int dst_tone_power_cmd (struct dst_state*) ;

__attribute__((used)) static int dst_set_tone(struct dvb_frontend *fe, fe_sec_tone_mode_t tone)
{
 struct dst_state *state = fe->demodulator_priv;

 state->tone = tone;
 if (state->dst_type != DST_TYPE_IS_SAT)
  return -EOPNOTSUPP;

 switch (tone) {
 case 129:
  if (state->type_flags & DST_TYPE_HAS_OBS_REGS)
      state->tx_tuna[2] = 0x00;
  else
      state->tx_tuna[2] = 0xff;
  break;

 case 128:
  state->tx_tuna[2] = 0x02;
  break;
 default:
  return -EINVAL;
 }
 return dst_tone_power_cmd(state);
}

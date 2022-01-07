
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0288_state {int dummy; } ;
struct dvb_frontend {struct stv0288_state* demodulator_priv; } ;
typedef int fe_sec_tone_mode_t ;


 int EINVAL ;
 int EREMOTEIO ;


 int stv0288_writeregI (struct stv0288_state*,int,int) ;

__attribute__((used)) static int stv0288_set_tone(struct dvb_frontend *fe, fe_sec_tone_mode_t tone)
{
 struct stv0288_state *state = fe->demodulator_priv;

 switch (tone) {
 case 128:
  if (stv0288_writeregI(state, 0x05, 0x10))
   return -EREMOTEIO;
 break;

 case 129:
  if (stv0288_writeregI(state, 0x05, 0x12))
   return -EREMOTEIO;
 break;

 default:
  return -EINVAL;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv0299_state {int dummy; } ;
struct dvb_frontend {struct stv0299_state* demodulator_priv; } ;
typedef int fe_sec_tone_mode_t ;


 int EINVAL ;
 int ETIMEDOUT ;


 int stv0299_readreg (struct stv0299_state*,int) ;
 scalar_t__ stv0299_wait_diseqc_idle (struct stv0299_state*,int) ;
 int stv0299_writeregI (struct stv0299_state*,int,int) ;

__attribute__((used)) static int stv0299_set_tone (struct dvb_frontend* fe, fe_sec_tone_mode_t tone)
{
 struct stv0299_state* state = fe->demodulator_priv;
 u8 val;

 if (stv0299_wait_diseqc_idle (state, 100) < 0)
  return -ETIMEDOUT;

 val = stv0299_readreg (state, 0x08);

 switch (tone) {
 case 128:
  return stv0299_writeregI (state, 0x08, val | 0x3);

 case 129:
  return stv0299_writeregI (state, 0x08, (val & ~0x3) | 0x02);

 default:
  return -EINVAL;
 }
}

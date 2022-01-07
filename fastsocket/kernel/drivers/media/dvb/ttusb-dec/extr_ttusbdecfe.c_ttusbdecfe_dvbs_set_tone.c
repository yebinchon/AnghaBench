
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusbdecfe_state {int hi_band; } ;
struct dvb_frontend {scalar_t__ demodulator_priv; } ;
typedef scalar_t__ fe_sec_tone_mode_t ;


 scalar_t__ SEC_TONE_ON ;

__attribute__((used)) static int ttusbdecfe_dvbs_set_tone(struct dvb_frontend* fe, fe_sec_tone_mode_t tone)
{
 struct ttusbdecfe_state* state = (struct ttusbdecfe_state*) fe->demodulator_priv;

 state->hi_band = (SEC_TONE_ON == tone);

 return 0;
}

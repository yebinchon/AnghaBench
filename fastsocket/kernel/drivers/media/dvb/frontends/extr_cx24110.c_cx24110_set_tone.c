
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;
typedef scalar_t__ fe_sec_tone_mode_t ;


 scalar_t__ SEC_TONE_ON ;
 int cx24110_readreg (struct cx24110_state*,int) ;
 int cx24110_writereg (struct cx24110_state*,int,int) ;

__attribute__((used)) static int cx24110_set_tone(struct dvb_frontend* fe, fe_sec_tone_mode_t tone)
{
 struct cx24110_state *state = fe->demodulator_priv;

 return cx24110_writereg(state,0x76,(cx24110_readreg(state,0x76)&~0x10)|(((tone==SEC_TONE_ON))?0x10:0));
}

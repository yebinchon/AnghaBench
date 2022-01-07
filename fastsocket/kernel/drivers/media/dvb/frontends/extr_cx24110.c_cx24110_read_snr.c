
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int lastesn0; } ;


 int cx24110_readreg (struct cx24110_state*,int) ;
 int cx24110_writereg (struct cx24110_state*,int,int) ;

__attribute__((used)) static int cx24110_read_snr(struct dvb_frontend* fe, u16* snr)
{
 struct cx24110_state *state = fe->demodulator_priv;


 if(cx24110_readreg(state,0x6a)&0x80) {

  state->lastesn0=cx24110_readreg(state,0x69)|
   (cx24110_readreg(state,0x68)<<8);
  cx24110_writereg(state,0x6a,0x84);
 }
 *snr = state->lastesn0;

 return 0;
}

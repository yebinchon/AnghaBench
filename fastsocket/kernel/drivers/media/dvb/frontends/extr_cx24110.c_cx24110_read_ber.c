
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int lastber; } ;


 int cx24110_readreg (struct cx24110_state*,int) ;
 int cx24110_writereg (struct cx24110_state*,int,int) ;

__attribute__((used)) static int cx24110_read_ber(struct dvb_frontend* fe, u32* ber)
{
 struct cx24110_state *state = fe->demodulator_priv;


 if(cx24110_readreg(state,0x24)&0x10) {

  cx24110_writereg(state,0x24,0x04);
  state->lastber=cx24110_readreg(state,0x25)|
   (cx24110_readreg(state,0x26)<<8);
  cx24110_writereg(state,0x24,0x04);
  cx24110_writereg(state,0x24,0x14);
 }
 *ber = state->lastber;

 return 0;
}

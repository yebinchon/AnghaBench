
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;


 int EINVAL ;
 int cx24110_readreg (struct cx24110_state*,int) ;
 int cx24110_writereg (struct cx24110_state*,int,int) ;

__attribute__((used)) static int _cx24110_pll_write (struct dvb_frontend* fe, u8 *buf, int len)
{
 struct cx24110_state *state = fe->demodulator_priv;

 if (len != 3)
  return -EINVAL;





 cx24110_writereg(state,0x6d,0x30);
 cx24110_writereg(state,0x70,0x15);


 while (cx24110_readreg(state,0x6d)&0x80)
  cx24110_writereg(state,0x72,0);


 cx24110_writereg(state,0x72,buf[0]);


 while ((cx24110_readreg(state,0x6d)&0xc0)==0x80)
  ;


 cx24110_writereg(state,0x72,buf[1]);
 while ((cx24110_readreg(state,0x6d)&0xc0)==0x80)
  ;


 cx24110_writereg(state,0x72,buf[2]);
 while ((cx24110_readreg(state,0x6d)&0xc0)==0x80)
  ;


 cx24110_writereg(state,0x6d,0x32);
 cx24110_writereg(state,0x6d,0x30);

 return 0;
}

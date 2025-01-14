
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {int dummy; } ;
typedef scalar_t__ fe_sec_mini_cmd_t ;


 int EINVAL ;
 scalar_t__ SEC_MINI_A ;
 scalar_t__ SEC_MINI_B ;
 int cx24123_readreg (struct cx24123_state*,int) ;
 int cx24123_wait_for_diseqc (struct cx24123_state*) ;
 int cx24123_writereg (struct cx24123_state*,int,int) ;
 int dprintk (char*) ;
 int msleep (int) ;

__attribute__((used)) static int cx24123_diseqc_send_burst(struct dvb_frontend *fe,
 fe_sec_mini_cmd_t burst)
{
 struct cx24123_state *state = fe->demodulator_priv;
 int val, tone;

 dprintk("\n");


 tone = cx24123_readreg(state, 0x29);
 if (tone & 0x10)
  cx24123_writereg(state, 0x29, tone & ~0x50);


 cx24123_wait_for_diseqc(state);


 cx24123_writereg(state, 0x2a, cx24123_readreg(state, 0x2a) | 0x4);
 msleep(30);
 val = cx24123_readreg(state, 0x29);
 if (burst == SEC_MINI_A)
  cx24123_writereg(state, 0x29, ((val & 0x90) | 0x40 | 0x00));
 else if (burst == SEC_MINI_B)
  cx24123_writereg(state, 0x29, ((val & 0x90) | 0x40 | 0x08));
 else
  return -EINVAL;

 cx24123_wait_for_diseqc(state);
 cx24123_writereg(state, 0x2a, cx24123_readreg(state, 0x2a) & 0xfb);


 if (tone & 0x10)
  cx24123_writereg(state, 0x29, tone & ~0x40);

 return 0;
}

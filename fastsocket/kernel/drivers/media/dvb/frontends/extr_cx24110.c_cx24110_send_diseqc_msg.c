
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int* msg; } ;
struct cx24110_state {int dummy; } ;


 int EINVAL ;
 int cx24110_readreg (struct cx24110_state*,int) ;
 int cx24110_writereg (struct cx24110_state*,int,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int cx24110_send_diseqc_msg(struct dvb_frontend* fe,
       struct dvb_diseqc_master_cmd *cmd)
{
 int i, rv;
 struct cx24110_state *state = fe->demodulator_priv;
 unsigned long timeout;

 if (cmd->msg_len < 3 || cmd->msg_len > 6)
  return -EINVAL;

 for (i = 0; i < cmd->msg_len; i++)
  cx24110_writereg(state, 0x79 + i, cmd->msg[i]);

 rv = cx24110_readreg(state, 0x77);
 if (rv & 0x04) {
  cx24110_writereg(state, 0x77, rv & ~0x04);
  msleep(30);
 }

 rv = cx24110_readreg(state, 0x76);

 cx24110_writereg(state, 0x76, ((rv & 0x90) | 0x40) | ((cmd->msg_len-3) & 3));
 timeout = jiffies + msecs_to_jiffies(100);
 while (!time_after(jiffies, timeout) && !(cx24110_readreg(state, 0x76) & 0x40))
  ;

 return 0;
}

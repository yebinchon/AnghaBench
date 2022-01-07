
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s5h1420_state {int dummy; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;
struct dvb_diseqc_slave_reply {int timeout; int msg_len; int* msg; } ;


 int EIO ;
 int EOVERFLOW ;
 int ETIMEDOUT ;
 int HZ ;
 int jiffies ;
 int msleep (int) ;
 int s5h1420_readreg (struct s5h1420_state*,int) ;
 int s5h1420_writereg (struct s5h1420_state*,int,int) ;
 scalar_t__ time_after (int,unsigned long) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int s5h1420_recv_slave_reply (struct dvb_frontend* fe,
         struct dvb_diseqc_slave_reply* reply)
{
 struct s5h1420_state* state = fe->demodulator_priv;
 u8 val;
 int i;
 int length;
 unsigned long timeout;
 int result = 0;


 val = s5h1420_readreg(state, 0x3b);
 s5h1420_writereg(state, 0x3b, 0x82);
 msleep(15);


 timeout = jiffies + ((reply->timeout*HZ) / 1000);
 while(time_before(jiffies, timeout)) {
  if (!(s5h1420_readreg(state, 0x3b) & 0x80))
   break;

  msleep(5);
 }
 if (time_after(jiffies, timeout)) {
  result = -ETIMEDOUT;
  goto exit;
 }



 if (s5h1420_readreg(state, 0x49)) {
  result = -EIO;
  goto exit;
 }


 length = (s5h1420_readreg(state, 0x3b) & 0x70) >> 4;
 if (length > sizeof(reply->msg)) {
  result = -EOVERFLOW;
  goto exit;
 }
 reply->msg_len = length;


 for(i=0; i< length; i++) {
  reply->msg[i] = s5h1420_readreg(state, 0x3d + i);
 }

exit:

 s5h1420_writereg(state, 0x3b, val);
 msleep(15);
 return result;
}

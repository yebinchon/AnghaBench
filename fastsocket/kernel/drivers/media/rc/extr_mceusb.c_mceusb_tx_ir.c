
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct rc_dev {struct mceusb_dev* priv; } ;
struct mceusb_dev {unsigned char tx_mask; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MCE_CMDBUF_SIZE ;
 unsigned char MCE_CMD_S_TXMASK ;
 int MCE_CODE_LENGTH ;
 unsigned char MCE_COMMAND_HEADER ;
 unsigned char MCE_COMMAND_IRDATA ;
 unsigned char MCE_IRDATA_HEADER ;
 unsigned char MCE_IRDATA_TRAILER ;
 int MCE_MAX_PULSE_LENGTH ;
 int MCE_PULSE_BIT ;
 int MCE_TIME_UNIT ;
 int MCE_TX_HEADER_LENGTH ;
 int TASK_INTERRUPTIBLE ;
 int do_gettimeofday (struct timeval*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int mce_async_out (struct mceusb_dev*,unsigned char*,int) ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int usecs_to_jiffies (long) ;

__attribute__((used)) static int mceusb_tx_ir(struct rc_dev *dev, int *txbuf, u32 n)
{
 struct mceusb_dev *ir = dev->priv;
 int i, ret = 0;
 int count, cmdcount = 0;
 unsigned char *cmdbuf;
 long signal_duration = 0;
 struct timeval start_time, end_time;

 do_gettimeofday(&start_time);

 count = n / sizeof(int);

 cmdbuf = kzalloc(sizeof(int) * MCE_CMDBUF_SIZE, GFP_KERNEL);
 if (!cmdbuf)
  return -ENOMEM;


 cmdbuf[cmdcount++] = MCE_COMMAND_HEADER;
 cmdbuf[cmdcount++] = MCE_CMD_S_TXMASK;
 cmdbuf[cmdcount++] = ir->tx_mask;


 for (i = 0; (i < count) && (cmdcount < MCE_CMDBUF_SIZE); i++) {
  signal_duration += txbuf[i];
  txbuf[i] = txbuf[i] / MCE_TIME_UNIT;

  do {


   if ((cmdcount < MCE_CMDBUF_SIZE) &&
       (cmdcount - MCE_TX_HEADER_LENGTH) %
        MCE_CODE_LENGTH == 0)
    cmdbuf[cmdcount++] = MCE_IRDATA_HEADER;


   if (cmdcount < MCE_CMDBUF_SIZE)
    cmdbuf[cmdcount++] =
     (txbuf[i] < MCE_PULSE_BIT ?
      txbuf[i] : MCE_MAX_PULSE_LENGTH) |
      (i & 1 ? 0x00 : MCE_PULSE_BIT);
   else {
    ret = -EINVAL;
    goto out;
   }

  } while ((txbuf[i] > MCE_MAX_PULSE_LENGTH) &&
    (txbuf[i] -= MCE_MAX_PULSE_LENGTH));
 }


 cmdbuf[cmdcount - (cmdcount - MCE_TX_HEADER_LENGTH) % MCE_CODE_LENGTH] =
  MCE_COMMAND_IRDATA + (cmdcount - MCE_TX_HEADER_LENGTH) %
  MCE_CODE_LENGTH - 1;


 if (cmdcount >= MCE_CMDBUF_SIZE) {
  ret = -EINVAL;
  goto out;
 }


 cmdbuf[cmdcount++] = MCE_IRDATA_TRAILER;


 mce_async_out(ir, cmdbuf, cmdcount);






 do_gettimeofday(&end_time);
 signal_duration -= (end_time.tv_usec - start_time.tv_usec) +
      (end_time.tv_sec - start_time.tv_sec) * 1000000;


 set_current_state(TASK_INTERRUPTIBLE);
 schedule_timeout(usecs_to_jiffies(signal_duration));

out:
 kfree(cmdbuf);
 return ret ? ret : n;
}

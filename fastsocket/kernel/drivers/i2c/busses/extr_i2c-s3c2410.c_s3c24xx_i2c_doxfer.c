
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {int msg_num; int msg_idx; int dev; int wait; int lock; int state; scalar_t__ msg_ptr; struct i2c_msg* msg; scalar_t__ suspended; } ;
struct i2c_msg {int dummy; } ;


 int EAGAIN ;
 int EIO ;
 int HZ ;
 int STATE_START ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int s3c24xx_i2c_enable_irq (struct s3c24xx_i2c*) ;
 int s3c24xx_i2c_message_start (struct s3c24xx_i2c*,struct i2c_msg*) ;
 int s3c24xx_i2c_set_master (struct s3c24xx_i2c*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 unsigned long wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int s3c24xx_i2c_doxfer(struct s3c24xx_i2c *i2c,
         struct i2c_msg *msgs, int num)
{
 unsigned long timeout;
 int ret;

 if (i2c->suspended)
  return -EIO;

 ret = s3c24xx_i2c_set_master(i2c);
 if (ret != 0) {
  dev_err(i2c->dev, "cannot get bus (error %d)\n", ret);
  ret = -EAGAIN;
  goto out;
 }

 spin_lock_irq(&i2c->lock);

 i2c->msg = msgs;
 i2c->msg_num = num;
 i2c->msg_ptr = 0;
 i2c->msg_idx = 0;
 i2c->state = STATE_START;

 s3c24xx_i2c_enable_irq(i2c);
 s3c24xx_i2c_message_start(i2c, msgs);
 spin_unlock_irq(&i2c->lock);

 timeout = wait_event_timeout(i2c->wait, i2c->msg_num == 0, HZ * 5);

 ret = i2c->msg_idx;




 if (timeout == 0)
  dev_dbg(i2c->dev, "timeout\n");
 else if (ret != num)
  dev_dbg(i2c->dev, "incomplete xfer (%d)\n", ret);



 msleep(1);

 out:
 return ret;
}

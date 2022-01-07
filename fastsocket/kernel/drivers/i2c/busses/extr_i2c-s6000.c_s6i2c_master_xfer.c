
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct s6i2c_if {int msgs_num; int msgs_done; int timeout_count; TYPE_1__ timeout_timer; int complete; scalar_t__ done; scalar_t__ push; scalar_t__ msgs_push; struct i2c_msg* msgs; } ;
struct i2c_msg {int flags; scalar_t__ len; scalar_t__ addr; } ;
struct i2c_adapter {int dev; struct s6i2c_if* algo_data; } ;


 int EINVAL ;
 int I2C_M_TEN ;
 scalar_t__ POLL_TIMEOUT ;
 int S6_I2C_CLRINTR ;
 int S6_I2C_ENABLE ;
 int S6_I2C_INTRMASK ;
 int S6_I2C_INTR_TXABRT ;
 int S6_I2C_INTR_TXEMPTY ;
 int S6_I2C_STATUS ;
 int S6_I2C_STATUS_ACTIVITY ;
 int S6_I2C_TAR ;
 int S6_I2C_TXFLR ;
 int add_timer (TYPE_1__*) ;
 int del_timer_sync (TYPE_1__*) ;
 int dev_err (int *,char*) ;
 int i2c_rd16 (struct s6i2c_if*,int ) ;
 scalar_t__ i2c_rd32 (struct s6i2c_if*,int ) ;
 int i2c_wr16 (struct s6i2c_if*,int ,int) ;
 scalar_t__ jiffies ;
 int schedule () ;
 int wait_for_completion (int *) ;
 int yield () ;

__attribute__((used)) static int s6i2c_master_xfer(struct i2c_adapter *adap,
    struct i2c_msg *msgs, int num)
{
 struct s6i2c_if *iface = adap->algo_data;
 int i;
 if (num == 0)
  return 0;
 if (i2c_rd16(iface, S6_I2C_STATUS) & (1 << S6_I2C_STATUS_ACTIVITY))
  yield();
 i2c_wr16(iface, S6_I2C_INTRMASK, 0);
 i2c_rd16(iface, S6_I2C_CLRINTR);
 for (i = 0; i < num; i++) {
  if (msgs[i].flags & I2C_M_TEN) {
   dev_err(&adap->dev,
    "s6i2c: 10 bits addr not supported\n");
   return -EINVAL;
  }
  if (msgs[i].len == 0) {
   dev_err(&adap->dev,
    "s6i2c: zero length message not supported\n");
   return -EINVAL;
  }
  if (msgs[i].addr != msgs[0].addr) {
   dev_err(&adap->dev,
    "s6i2c: multiple xfer cannot change target\n");
   return -EINVAL;
  }
 }

 iface->msgs = msgs;
 iface->msgs_num = num;
 iface->msgs_push = 0;
 iface->msgs_done = 0;
 iface->push = 0;
 iface->done = 0;
 iface->timeout_count = 10;
 i2c_wr16(iface, S6_I2C_TAR, msgs[0].addr);
 i2c_wr16(iface, S6_I2C_ENABLE, 1);
 i2c_wr16(iface, S6_I2C_INTRMASK, (1 << S6_I2C_INTR_TXEMPTY) |
      (1 << S6_I2C_INTR_TXABRT));

 iface->timeout_timer.expires = jiffies + POLL_TIMEOUT;
 add_timer(&iface->timeout_timer);
 wait_for_completion(&iface->complete);
 del_timer_sync(&iface->timeout_timer);
 while (i2c_rd32(iface, S6_I2C_TXFLR) > 0)
  schedule();
 while (i2c_rd16(iface, S6_I2C_STATUS) & (1 << S6_I2C_STATUS_ACTIVITY))
  schedule();

 i2c_wr16(iface, S6_I2C_INTRMASK, 0);
 i2c_wr16(iface, S6_I2C_ENABLE, 0);
 return iface->msgs_done;
}

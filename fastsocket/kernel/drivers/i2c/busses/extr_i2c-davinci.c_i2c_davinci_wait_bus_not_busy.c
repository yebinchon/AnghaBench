
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long timeout; } ;
struct davinci_i2c_dev {int dev; TYPE_1__ adapter; } ;


 int DAVINCI_I2C_STR_BB ;
 int DAVINCI_I2C_STR_REG ;
 int ETIMEDOUT ;
 int davinci_i2c_read_reg (struct davinci_i2c_dev*,int ) ;
 int dev_warn (int ,char*) ;
 unsigned long jiffies ;
 int schedule_timeout (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int i2c_davinci_wait_bus_not_busy(struct davinci_i2c_dev *dev,
      char allow_sleep)
{
 unsigned long timeout;

 timeout = jiffies + dev->adapter.timeout;
 while (davinci_i2c_read_reg(dev, DAVINCI_I2C_STR_REG)
        & DAVINCI_I2C_STR_BB) {
  if (time_after(jiffies, timeout)) {
   dev_warn(dev->dev,
     "timeout waiting for bus ready\n");
   return -ETIMEDOUT;
  }
  if (allow_sleep)
   schedule_timeout(1);
 }

 return 0;
}

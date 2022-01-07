
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stu300_dev {TYPE_1__* pdev; scalar_t__ virtbase; } ;
struct TYPE_2__ {int dev; } ;


 int BUSY_RELEASE_ATTEMPTS ;
 int ETIMEDOUT ;
 scalar_t__ I2C_SR1 ;
 int I2C_SR1_BUSY_IND ;
 unsigned long STU300_TIMEOUT ;
 int dev_err (int *,char*,int) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int stu300_init_hw (struct stu300_dev*) ;
 int stu300_r8 (scalar_t__) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int stu300_wait_while_busy(struct stu300_dev *dev)
{
 unsigned long timeout;
 int i;

 for (i = 0; i < BUSY_RELEASE_ATTEMPTS; i++) {
  timeout = jiffies + STU300_TIMEOUT;

  while (!time_after(jiffies, timeout)) {

   if ((stu300_r8(dev->virtbase + I2C_SR1) &
        I2C_SR1_BUSY_IND) == 0)
    return 0;
   msleep(1);
  }

  dev_err(&dev->pdev->dev, "transaction timed out "
   "waiting for device to be free (not busy). "
         "Attempt: %d\n", i+1);

  dev_err(&dev->pdev->dev, "base address = "
   "0x%08x, reinit hardware\n", (u32) dev->virtbase);

  (void) stu300_init_hw(dev);
 }

 dev_err(&dev->pdev->dev, "giving up after %d attempts "
  "to reset the bus.\n", BUSY_RELEASE_ATTEMPTS);

 return -ETIMEDOUT;
}

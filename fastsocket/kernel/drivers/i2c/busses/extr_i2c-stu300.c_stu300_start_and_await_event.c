
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stu300_dev {int cmd_err; int cmd_event; TYPE_1__* pdev; int cmd_complete; scalar_t__ virtbase; int cmd_issue_lock; } ;
typedef enum stu300_event { ____Placeholder_stu300_event } stu300_event ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ETIMEDOUT ;
 scalar_t__ I2C_CR ;
 int I2C_CR_INTERRUPT_ENABLE ;
 int STU300_ERROR_NONE ;
 int STU300_TIMEOUT ;
 int WARN (int,char*) ;
 int dev_err (int *,char*,int,...) ;
 int init_completion (int *) ;
 int irqs_disabled () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stu300_init_hw (struct stu300_dev*) ;
 int stu300_wr8 (int ,scalar_t__) ;
 scalar_t__ unlikely (int ) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int stu300_start_and_await_event(struct stu300_dev *dev,
       u8 cr_value,
       enum stu300_event mr_event)
{
 int ret;

 if (unlikely(irqs_disabled())) {

  WARN(1, "irqs are disabled, cannot poll for event\n");
  return -EIO;
 }


 spin_lock_irq(&dev->cmd_issue_lock);
 init_completion(&dev->cmd_complete);
 dev->cmd_err = STU300_ERROR_NONE;
 dev->cmd_event = mr_event;
 spin_unlock_irq(&dev->cmd_issue_lock);


 cr_value |= I2C_CR_INTERRUPT_ENABLE;
 stu300_wr8(cr_value, dev->virtbase + I2C_CR);
 ret = wait_for_completion_interruptible_timeout(&dev->cmd_complete,
       STU300_TIMEOUT);
 if (ret < 0) {
  dev_err(&dev->pdev->dev,
         "wait_for_completion_interruptible_timeout() "
         "returned %d waiting for event %04x\n", ret, mr_event);
  return ret;
 }

 if (ret == 0) {
  dev_err(&dev->pdev->dev, "controller timed out "
         "waiting for event %d, reinit hardware\n", mr_event);
  (void) stu300_init_hw(dev);
  return -ETIMEDOUT;
 }

 if (dev->cmd_err != STU300_ERROR_NONE) {
  dev_err(&dev->pdev->dev, "controller (start) "
         "error %d waiting for event %d, reinit hardware\n",
         dev->cmd_err, mr_event);
  (void) stu300_init_hw(dev);
  return -EIO;
 }

 return 0;
}

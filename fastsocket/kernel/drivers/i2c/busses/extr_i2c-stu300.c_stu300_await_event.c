
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stu300_dev {int cmd_err; int cmd_event; TYPE_1__* pdev; int cmd_complete; int cmd_issue_lock; } ;
typedef enum stu300_event { ____Placeholder_stu300_event } stu300_event ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ETIMEDOUT ;
 int STU300_ERROR_NONE ;
 int STU300_EVENT_6 ;
 int STU300_TIMEOUT ;
 int dev_err (int *,char*,...) ;
 int init_completion (int *) ;
 int irqs_disabled () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stu300_init_hw (struct stu300_dev*) ;
 int stu300_irq_enable (struct stu300_dev*) ;
 scalar_t__ unlikely (int ) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int stu300_await_event(struct stu300_dev *dev,
    enum stu300_event mr_event)
{
 int ret;

 if (unlikely(irqs_disabled())) {

  dev_err(&dev->pdev->dev, "irqs are disabled on this "
   "system!\n");
  return -EIO;
 }


 spin_lock_irq(&dev->cmd_issue_lock);
 dev->cmd_err = STU300_ERROR_NONE;
 dev->cmd_event = mr_event;

 init_completion(&dev->cmd_complete);


 stu300_irq_enable(dev);


 spin_unlock_irq(&dev->cmd_issue_lock);

 ret = wait_for_completion_interruptible_timeout(&dev->cmd_complete,
       STU300_TIMEOUT);
 if (ret < 0) {
  dev_err(&dev->pdev->dev,
         "wait_for_completion_interruptible_timeout()"
         "returned %d waiting for event %04x\n", ret, mr_event);
  return ret;
 }

 if (ret == 0) {
  if (mr_event != STU300_EVENT_6) {
   dev_err(&dev->pdev->dev, "controller "
    "timed out waiting for event %d, reinit "
    "hardware\n", mr_event);
   (void) stu300_init_hw(dev);
  }
  return -ETIMEDOUT;
 }

 if (dev->cmd_err != STU300_ERROR_NONE) {
  if (mr_event != STU300_EVENT_6) {
   dev_err(&dev->pdev->dev, "controller "
    "error (await_event) %d waiting for event %d, "
          "reinit hardware\n", dev->cmd_err, mr_event);
   (void) stu300_init_hw(dev);
  }
  return -EIO;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int ccwlock; } ;


 int DEV_EVENT_TIMEOUT ;
 int ccw_timeout_log (struct ccw_device*) ;
 int dev_fsm_event (struct ccw_device*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 scalar_t__ timeout_log_enabled ;

__attribute__((used)) static void
ccw_device_timeout(unsigned long data)
{
 struct ccw_device *cdev;

 cdev = (struct ccw_device *) data;
 spin_lock_irq(cdev->ccwlock);
 if (timeout_log_enabled)
  ccw_timeout_log(cdev);
 dev_fsm_event(cdev, DEV_EVENT_TIMEOUT);
 spin_unlock_irq(cdev->ccwlock);
}

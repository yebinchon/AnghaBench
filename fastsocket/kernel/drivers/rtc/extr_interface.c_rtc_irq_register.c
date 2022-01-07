
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_task {int * func; } ;
struct rtc_device {int flags; int irq_task_lock; struct rtc_task* irq_task; } ;


 int EBUSY ;
 int EINVAL ;
 int RTC_DEV_BUSY ;
 int clear_bit_unlock (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;

int rtc_irq_register(struct rtc_device *rtc, struct rtc_task *task)
{
 int retval = -EBUSY;

 if (task == ((void*)0) || task->func == ((void*)0))
  return -EINVAL;


 if (test_and_set_bit_lock(RTC_DEV_BUSY, &rtc->flags))
  return -EBUSY;

 spin_lock_irq(&rtc->irq_task_lock);
 if (rtc->irq_task == ((void*)0)) {
  rtc->irq_task = task;
  retval = 0;
 }
 spin_unlock_irq(&rtc->irq_task_lock);

 clear_bit_unlock(RTC_DEV_BUSY, &rtc->flags);

 return retval;
}

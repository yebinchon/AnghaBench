
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_task {int dummy; } ;
struct rtc_device {int irq_task_lock; struct rtc_task* irq_task; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void rtc_irq_unregister(struct rtc_device *rtc, struct rtc_task *task)
{
 spin_lock_irq(&rtc->irq_task_lock);
 if (rtc->irq_task == task)
  rtc->irq_task = ((void*)0);
 spin_unlock_irq(&rtc->irq_task_lock);
}

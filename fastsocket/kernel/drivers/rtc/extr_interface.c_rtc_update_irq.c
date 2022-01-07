
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtc_device {unsigned long irq_data; int async_queue; int irq_queue; int irq_task_lock; TYPE_1__* irq_task; int irq_lock; } ;
struct TYPE_2__ {int private_data; int (* func ) (int ) ;} ;


 int POLL_IN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ) ;
 int wake_up_interruptible (int *) ;

void rtc_update_irq(struct rtc_device *rtc,
  unsigned long num, unsigned long events)
{
 unsigned long flags;

 spin_lock_irqsave(&rtc->irq_lock, flags);
 rtc->irq_data = (rtc->irq_data + (num << 8)) | events;
 spin_unlock_irqrestore(&rtc->irq_lock, flags);

 spin_lock_irqsave(&rtc->irq_task_lock, flags);
 if (rtc->irq_task)
  rtc->irq_task->func(rtc->irq_task->private_data);
 spin_unlock_irqrestore(&rtc->irq_task_lock, flags);

 wake_up_interruptible(&rtc->irq_queue);
 kill_fasync(&rtc->async_queue, SIGIO, POLL_IN);
}

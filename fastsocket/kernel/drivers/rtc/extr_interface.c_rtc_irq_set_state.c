
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_task {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct rtc_device {TYPE_1__ dev; TYPE_2__* ops; int irq_task_lock; struct rtc_task* irq_task; } ;
struct TYPE_4__ {int (* irq_set_state ) (int ,int) ;} ;


 int EACCES ;
 int EBUSY ;
 int ENXIO ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int) ;

int rtc_irq_set_state(struct rtc_device *rtc, struct rtc_task *task, int enabled)
{
 int err = 0;
 unsigned long flags;

 if (rtc->ops->irq_set_state == ((void*)0))
  return -ENXIO;

 spin_lock_irqsave(&rtc->irq_task_lock, flags);
 if (rtc->irq_task != ((void*)0) && task == ((void*)0))
  err = -EBUSY;
 if (rtc->irq_task != task)
  err = -EACCES;
 spin_unlock_irqrestore(&rtc->irq_task_lock, flags);

 if (err == 0)
  err = rtc->ops->irq_set_state(rtc->dev.parent, enabled);

 return err;
}

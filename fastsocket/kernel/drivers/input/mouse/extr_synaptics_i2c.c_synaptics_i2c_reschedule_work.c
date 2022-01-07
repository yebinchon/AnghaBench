
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synaptics_i2c {int lock; int dwork; } ;


 int __cancel_delayed_work (int *) ;
 int schedule_delayed_work (int *,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void synaptics_i2c_reschedule_work(struct synaptics_i2c *touch,
       unsigned long delay)
{
 unsigned long flags;

 spin_lock_irqsave(&touch->lock, flags);





 __cancel_delayed_work(&touch->dwork);
 schedule_delayed_work(&touch->dwork, delay);

 spin_unlock_irqrestore(&touch->lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qt2160_data {int lock; int dwork; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int __cancel_delayed_work (int *) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t qt2160_irq(int irq, void *_qt2160)
{
 struct qt2160_data *qt2160 = _qt2160;
 unsigned long flags;

 spin_lock_irqsave(&qt2160->lock, flags);

 __cancel_delayed_work(&qt2160->dwork);
 schedule_delayed_work(&qt2160->dwork, 0);

 spin_unlock_irqrestore(&qt2160->lock, flags);

 return IRQ_HANDLED;
}

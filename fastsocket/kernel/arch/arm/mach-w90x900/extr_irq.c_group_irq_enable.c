
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group_irq {int (* enable ) (struct group_irq*,int) ;int enabled; } ;


 int groupirq_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct group_irq*,int) ;

__attribute__((used)) static int group_irq_enable(struct group_irq *group_irq)
{
 unsigned long flags;

 spin_lock_irqsave(&groupirq_lock, flags);
 if (group_irq->enabled++ == 0)
  (group_irq->enable)(group_irq, 1);
 spin_unlock_irqrestore(&groupirq_lock, flags);

 return 0;
}

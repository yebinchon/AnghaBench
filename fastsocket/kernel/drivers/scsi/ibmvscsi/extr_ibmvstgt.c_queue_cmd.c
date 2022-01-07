
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target {int lock; int cmd_queue; } ;
struct iu_entry {int ilist; struct srp_target* target; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void queue_cmd(struct iu_entry *iue)
{
 struct srp_target *target = iue->target;
 unsigned long flags;

 spin_lock_irqsave(&target->lock, flags);
 list_add_tail(&iue->ilist, &target->cmd_queue);
 spin_unlock_irqrestore(&target->lock, flags);
}

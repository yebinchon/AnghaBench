
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_completion {int done; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ub_is_completed(struct ub_completion *x)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&x->lock, flags);
 ret = x->done;
 spin_unlock_irqrestore(&x->lock, flags);
 return ret;
}

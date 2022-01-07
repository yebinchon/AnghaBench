
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_completion {int lock; int done; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ub_complete(struct ub_completion *x)
{
 unsigned long flags;

 spin_lock_irqsave(&x->lock, flags);
 x->done++;
 spin_unlock_irqrestore(&x->lock, flags);
}

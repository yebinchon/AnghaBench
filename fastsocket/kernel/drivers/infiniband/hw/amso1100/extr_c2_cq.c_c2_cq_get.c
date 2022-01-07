
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2_dev {int lock; struct c2_cq** qptr_array; } ;
struct c2_cq {int refcount; } ;


 int atomic_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct c2_cq *c2_cq_get(struct c2_dev *c2dev, int cqn)
{
 struct c2_cq *cq;
 unsigned long flags;

 spin_lock_irqsave(&c2dev->lock, flags);
 cq = c2dev->qptr_array[cqn];
 if (!cq) {
  spin_unlock_irqrestore(&c2dev->lock, flags);
  return ((void*)0);
 }
 atomic_inc(&cq->refcount);
 spin_unlock_irqrestore(&c2dev->lock, flags);
 return cq;
}

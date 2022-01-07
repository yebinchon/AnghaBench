
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viosrp_crq {int valid; } ;
struct crq_queue {size_t cur; size_t size; int lock; struct viosrp_crq* msgs; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline struct viosrp_crq *next_crq(struct crq_queue *queue)
{
 struct viosrp_crq *crq;
 unsigned long flags;

 spin_lock_irqsave(&queue->lock, flags);
 crq = &queue->msgs[queue->cur];
 if (crq->valid & 0x80) {
  if (++queue->cur == queue->size)
   queue->cur = 0;
 } else
  crq = ((void*)0);
 spin_unlock_irqrestore(&queue->lock, flags);

 return crq;
}

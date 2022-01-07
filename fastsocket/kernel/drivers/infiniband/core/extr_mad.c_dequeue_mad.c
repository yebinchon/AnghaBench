
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_queue {int lock; int count; } ;
struct ib_mad_list_head {int list; struct ib_mad_queue* mad_queue; } ;


 int BUG_ON (int) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dequeue_mad(struct ib_mad_list_head *mad_list)
{
 struct ib_mad_queue *mad_queue;
 unsigned long flags;

 BUG_ON(!mad_list->mad_queue);
 mad_queue = mad_list->mad_queue;
 spin_lock_irqsave(&mad_queue->lock, flags);
 list_del(&mad_list->list);
 mad_queue->count--;
 spin_unlock_irqrestore(&mad_queue->lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;


 int QUEUE_FLAG_ELVSWITCH ;
 int queue_flag_clear (int ,struct request_queue*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void elv_quiesce_end(struct request_queue *q)
{
 spin_lock_irq(q->queue_lock);
 queue_flag_clear(QUEUE_FLAG_ELVSWITCH, q);
 spin_unlock_irq(q->queue_lock);
}

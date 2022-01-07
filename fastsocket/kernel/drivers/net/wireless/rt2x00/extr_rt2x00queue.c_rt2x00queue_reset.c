
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_queue {int index_lock; scalar_t__* index; scalar_t__ length; scalar_t__ count; } ;


 unsigned int Q_INDEX_MAX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rt2x00queue_reset(struct data_queue *queue)
{
 unsigned long irqflags;
 unsigned int i;

 spin_lock_irqsave(&queue->index_lock, irqflags);

 queue->count = 0;
 queue->length = 0;

 for (i = 0; i < Q_INDEX_MAX; i++)
  queue->index[i] = 0;

 spin_unlock_irqrestore(&queue->index_lock, irqflags);
}

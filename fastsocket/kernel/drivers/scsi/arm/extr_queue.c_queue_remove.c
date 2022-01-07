
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct TYPE_6__ {int next; } ;
struct TYPE_5__ {int queue_lock; TYPE_3__ head; } ;
typedef TYPE_1__ Queue_t ;


 struct scsi_cmnd* __queue_remove (TYPE_1__*,int ) ;
 int list_empty (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct scsi_cmnd *queue_remove(Queue_t *queue)
{
 unsigned long flags;
 struct scsi_cmnd *SCpnt = ((void*)0);

 spin_lock_irqsave(&queue->queue_lock, flags);
 if (!list_empty(&queue->head))
  SCpnt = __queue_remove(queue, queue->head.next);
 spin_unlock_irqrestore(&queue->queue_lock, flags);

 return SCpnt;
}

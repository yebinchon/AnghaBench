
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer_queue {scalar_t__ magic; scalar_t__ length; int queue_lock; int out; } ;


 scalar_t__ VINO_QUEUE_MAGIC ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vino_fifo_has_id (int *,unsigned int) ;

__attribute__((used)) static int vino_queue_outgoing_contains(struct vino_framebuffer_queue *q,
     unsigned int id)
{
 int ret = 0;
 unsigned long flags;

 if (q->magic != VINO_QUEUE_MAGIC) {
  return ret;
 }

 spin_lock_irqsave(&q->queue_lock, flags);

 if (q->length == 0)
  goto out;

 ret = vino_fifo_has_id(&q->out, id);

out:
 spin_unlock_irqrestore(&q->queue_lock, flags);

 return ret;
}

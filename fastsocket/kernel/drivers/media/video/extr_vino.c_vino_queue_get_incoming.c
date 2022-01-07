
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer_queue {scalar_t__ magic; scalar_t__ length; int queue_lock; int in; } ;


 int VINO_QUEUE_ERROR ;
 scalar_t__ VINO_QUEUE_MAGIC ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int vino_fifo_get_used (int *) ;

__attribute__((used)) static int vino_queue_get_incoming(struct vino_framebuffer_queue *q,
       unsigned int *used)
{
 int ret = 0;
 unsigned long flags;

 if (q->magic != VINO_QUEUE_MAGIC) {
  return VINO_QUEUE_ERROR;
 }

 spin_lock_irqsave(&q->queue_lock, flags);

 if (q->length == 0) {
  ret = VINO_QUEUE_ERROR;
  goto out;
 }

 *used = vino_fifo_get_used(&q->in);

out:
 spin_unlock_irqrestore(&q->queue_lock, flags);

 return ret;
}

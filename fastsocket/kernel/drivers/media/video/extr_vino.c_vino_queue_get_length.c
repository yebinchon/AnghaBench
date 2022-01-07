
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer_queue {scalar_t__ magic; unsigned int length; int queue_lock; } ;


 scalar_t__ VINO_QUEUE_MAGIC ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int vino_queue_get_length(struct vino_framebuffer_queue *q)
{
 unsigned int length = 0;
 unsigned long flags;

 if (q->magic != VINO_QUEUE_MAGIC) {
  return length;
 }

 spin_lock_irqsave(&q->queue_lock, flags);
 length = q->length;
 spin_unlock_irqrestore(&q->queue_lock, flags);

 return length;
}

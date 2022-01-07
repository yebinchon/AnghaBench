
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_framebuffer_queue {scalar_t__ magic; unsigned int length; int queue_lock; struct vino_framebuffer** buffer; } ;
struct vino_framebuffer {int dummy; } ;


 scalar_t__ VINO_QUEUE_MAGIC ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct
vino_framebuffer *vino_queue_get_buffer(struct vino_framebuffer_queue *q,
     unsigned int id)
{
 struct vino_framebuffer *ret = ((void*)0);
 unsigned long flags;

 if (q->magic != VINO_QUEUE_MAGIC) {
  return ret;
 }

 spin_lock_irqsave(&q->queue_lock, flags);

 if (q->length == 0)
  goto out;

 if (id >= q->length)
  goto out;

 ret = q->buffer[id];
 out:
 spin_unlock_irqrestore(&q->queue_lock, flags);

 return ret;
}

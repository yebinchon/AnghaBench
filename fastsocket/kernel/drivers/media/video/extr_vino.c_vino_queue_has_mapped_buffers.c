
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vino_framebuffer_queue {scalar_t__ magic; unsigned int length; int queue_lock; TYPE_1__** buffer; } ;
struct TYPE_2__ {scalar_t__ map_count; } ;


 scalar_t__ VINO_QUEUE_MAGIC ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int vino_queue_has_mapped_buffers(struct vino_framebuffer_queue *q)
{
 unsigned int i;
 int ret = 0;
 unsigned long flags;

 if (q->magic != VINO_QUEUE_MAGIC) {
  return ret;
 }

 spin_lock_irqsave(&q->queue_lock, flags);
 for (i = 0; i < q->length; i++) {
  if (q->buffer[i]->map_count > 0) {
   ret = 1;
   break;
  }
 }
 spin_unlock_irqrestore(&q->queue_lock, flags);

 return ret;
}

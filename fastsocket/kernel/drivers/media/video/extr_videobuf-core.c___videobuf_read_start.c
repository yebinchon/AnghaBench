
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct videobuf_queue {int reading; int irqlock; TYPE_2__** bufs; TYPE_1__* ops; int stream; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_5__ {int stream; } ;
struct TYPE_4__ {int (* buf_prepare ) (struct videobuf_queue*,TYPE_2__*,int) ;int (* buf_queue ) (struct videobuf_queue*,TYPE_2__*) ;int (* buf_setup ) (struct videobuf_queue*,unsigned int*,unsigned int*) ;} ;


 unsigned int PAGE_ALIGN (unsigned int) ;
 int V4L2_MEMORY_USERPTR ;
 unsigned int VIDEO_MAX_FRAME ;
 int __videobuf_mmap_setup (struct videobuf_queue*,unsigned int,unsigned int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct videobuf_queue*,unsigned int*,unsigned int*) ;
 int stub2 (struct videobuf_queue*,TYPE_2__*,int) ;
 int stub3 (struct videobuf_queue*,TYPE_2__*) ;
 int videobuf_next_field (struct videobuf_queue*) ;

__attribute__((used)) static int __videobuf_read_start(struct videobuf_queue *q)
{
 enum v4l2_field field;
 unsigned long flags = 0;
 unsigned int count = 0, size = 0;
 int err, i;

 q->ops->buf_setup(q, &count, &size);
 if (count < 2)
  count = 2;
 if (count > VIDEO_MAX_FRAME)
  count = VIDEO_MAX_FRAME;
 size = PAGE_ALIGN(size);

 err = __videobuf_mmap_setup(q, count, size, V4L2_MEMORY_USERPTR);
 if (err < 0)
  return err;

 count = err;

 for (i = 0; i < count; i++) {
  field = videobuf_next_field(q);
  err = q->ops->buf_prepare(q, q->bufs[i], field);
  if (err)
   return err;
  list_add_tail(&q->bufs[i]->stream, &q->stream);
 }
 spin_lock_irqsave(q->irqlock, flags);
 for (i = 0; i < count; i++)
  q->ops->buf_queue(q, q->bufs[i]);
 spin_unlock_irqrestore(q->irqlock, flags);
 q->reading = 1;
 return 0;
}

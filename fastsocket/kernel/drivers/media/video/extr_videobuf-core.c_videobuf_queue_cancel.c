
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {int stream; TYPE_2__** bufs; TYPE_1__* ops; int irqlock; int wait; scalar_t__ reading; scalar_t__ streaming; } ;
struct TYPE_4__ {scalar_t__ state; int done; int queue; } ;
struct TYPE_3__ {int (* buf_release ) (struct videobuf_queue*,TYPE_2__*) ;} ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ VIDEOBUF_ERROR ;
 scalar_t__ VIDEOBUF_QUEUED ;
 int VIDEO_MAX_FRAME ;
 int list_del (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct videobuf_queue*,TYPE_2__*) ;
 int wake_up_all (int *) ;
 int wake_up_interruptible_sync (int *) ;

void videobuf_queue_cancel(struct videobuf_queue *q)
{
 unsigned long flags = 0;
 int i;

 q->streaming = 0;
 q->reading = 0;
 wake_up_interruptible_sync(&q->wait);


 spin_lock_irqsave(q->irqlock, flags);
 for (i = 0; i < VIDEO_MAX_FRAME; i++) {
  if (((void*)0) == q->bufs[i])
   continue;
  if (q->bufs[i]->state == VIDEOBUF_QUEUED) {
   list_del(&q->bufs[i]->queue);
   q->bufs[i]->state = VIDEOBUF_ERROR;
   wake_up_all(&q->bufs[i]->done);
  }
 }
 spin_unlock_irqrestore(q->irqlock, flags);


 for (i = 0; i < VIDEO_MAX_FRAME; i++) {
  if (((void*)0) == q->bufs[i])
   continue;
  q->ops->buf_release(q, q->bufs[i]);
 }
 INIT_LIST_HEAD(&q->stream);
}

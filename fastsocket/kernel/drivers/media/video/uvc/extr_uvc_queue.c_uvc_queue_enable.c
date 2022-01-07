
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_video_queue {unsigned int count; int mutex; int flags; TYPE_1__* buffer; int mainqueue; scalar_t__ buf_used; } ;
struct TYPE_2__ {int state; scalar_t__ error; } ;


 int EBUSY ;
 int INIT_LIST_HEAD (int *) ;
 int UVC_BUF_STATE_IDLE ;
 int UVC_QUEUE_STREAMING ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uvc_queue_cancel (struct uvc_video_queue*,int ) ;
 scalar_t__ uvc_queue_streaming (struct uvc_video_queue*) ;

int uvc_queue_enable(struct uvc_video_queue *queue, int enable)
{
 unsigned int i;
 int ret = 0;

 mutex_lock(&queue->mutex);
 if (enable) {
  if (uvc_queue_streaming(queue)) {
   ret = -EBUSY;
   goto done;
  }
  queue->flags |= UVC_QUEUE_STREAMING;
  queue->buf_used = 0;
 } else {
  uvc_queue_cancel(queue, 0);
  INIT_LIST_HEAD(&queue->mainqueue);

  for (i = 0; i < queue->count; ++i) {
   queue->buffer[i].error = 0;
   queue->buffer[i].state = UVC_BUF_STATE_IDLE;
  }

  queue->flags &= ~UVC_QUEUE_STREAMING;
 }

done:
 mutex_unlock(&queue->mutex);
 return ret;
}

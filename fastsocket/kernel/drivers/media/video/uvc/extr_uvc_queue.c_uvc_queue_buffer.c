
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_buffer {size_t index; scalar_t__ type; scalar_t__ memory; scalar_t__ bytesused; } ;
struct uvc_video_queue {scalar_t__ type; size_t count; int flags; int mutex; int irqlock; int irqqueue; int mainqueue; struct uvc_buffer* buffer; } ;
struct TYPE_2__ {scalar_t__ length; scalar_t__ bytesused; } ;
struct uvc_buffer {scalar_t__ state; int queue; int stream; TYPE_1__ buf; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ UVC_BUF_STATE_IDLE ;
 scalar_t__ UVC_BUF_STATE_QUEUED ;
 int UVC_QUEUE_DISCONNECTED ;
 int UVC_TRACE_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uvc_trace (int ,char*,...) ;

int uvc_queue_buffer(struct uvc_video_queue *queue,
 struct v4l2_buffer *v4l2_buf)
{
 struct uvc_buffer *buf;
 unsigned long flags;
 int ret = 0;

 uvc_trace(UVC_TRACE_CAPTURE, "Queuing buffer %u.\n", v4l2_buf->index);

 if (v4l2_buf->type != queue->type ||
     v4l2_buf->memory != V4L2_MEMORY_MMAP) {
  uvc_trace(UVC_TRACE_CAPTURE, "[E] Invalid buffer type (%u) "
   "and/or memory (%u).\n", v4l2_buf->type,
   v4l2_buf->memory);
  return -EINVAL;
 }

 mutex_lock(&queue->mutex);
 if (v4l2_buf->index >= queue->count) {
  uvc_trace(UVC_TRACE_CAPTURE, "[E] Out of range index.\n");
  ret = -EINVAL;
  goto done;
 }

 buf = &queue->buffer[v4l2_buf->index];
 if (buf->state != UVC_BUF_STATE_IDLE) {
  uvc_trace(UVC_TRACE_CAPTURE, "[E] Invalid buffer state "
   "(%u).\n", buf->state);
  ret = -EINVAL;
  goto done;
 }

 if (v4l2_buf->type == V4L2_BUF_TYPE_VIDEO_OUTPUT &&
     v4l2_buf->bytesused > buf->buf.length) {
  uvc_trace(UVC_TRACE_CAPTURE, "[E] Bytes used out of bounds.\n");
  ret = -EINVAL;
  goto done;
 }

 spin_lock_irqsave(&queue->irqlock, flags);
 if (queue->flags & UVC_QUEUE_DISCONNECTED) {
  spin_unlock_irqrestore(&queue->irqlock, flags);
  ret = -ENODEV;
  goto done;
 }
 buf->state = UVC_BUF_STATE_QUEUED;
 if (v4l2_buf->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  buf->buf.bytesused = 0;
 else
  buf->buf.bytesused = v4l2_buf->bytesused;

 list_add_tail(&buf->stream, &queue->mainqueue);
 list_add_tail(&buf->queue, &queue->irqqueue);
 spin_unlock_irqrestore(&queue->irqlock, flags);

done:
 mutex_unlock(&queue->mutex);
 return ret;
}

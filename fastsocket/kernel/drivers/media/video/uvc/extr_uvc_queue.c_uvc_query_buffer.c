
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {size_t index; } ;
struct uvc_video_queue {size_t count; int mutex; int * buffer; } ;


 int EINVAL ;
 int __uvc_query_buffer (int *,struct v4l2_buffer*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int uvc_query_buffer(struct uvc_video_queue *queue,
  struct v4l2_buffer *v4l2_buf)
{
 int ret = 0;

 mutex_lock(&queue->mutex);
 if (v4l2_buf->index >= queue->count) {
  ret = -EINVAL;
  goto done;
 }

 __uvc_query_buffer(&queue->buffer[v4l2_buf->index], v4l2_buf);

done:
 mutex_unlock(&queue->mutex);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int mutex; } ;


 int __uvc_free_buffers (struct uvc_video_queue*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int uvc_free_buffers(struct uvc_video_queue *queue)
{
 int ret;

 mutex_lock(&queue->mutex);
 ret = __uvc_free_buffers(queue);
 mutex_unlock(&queue->mutex);

 return ret;
}

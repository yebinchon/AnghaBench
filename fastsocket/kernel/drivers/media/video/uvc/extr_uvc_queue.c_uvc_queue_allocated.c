
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {scalar_t__ count; int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int uvc_queue_allocated(struct uvc_video_queue *queue)
{
 int allocated;

 mutex_lock(&queue->mutex);
 allocated = queue->count != 0;
 mutex_unlock(&queue->mutex);

 return allocated;
}

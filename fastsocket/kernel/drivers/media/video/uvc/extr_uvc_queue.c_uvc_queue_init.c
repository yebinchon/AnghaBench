
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int type; int flags; int irqqueue; int mainqueue; int irqlock; int mutex; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int INIT_LIST_HEAD (int *) ;
 int UVC_QUEUE_DROP_CORRUPTED ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void uvc_queue_init(struct uvc_video_queue *queue, enum v4l2_buf_type type,
      int drop_corrupted)
{
 mutex_init(&queue->mutex);
 spin_lock_init(&queue->irqlock);
 INIT_LIST_HEAD(&queue->mainqueue);
 INIT_LIST_HEAD(&queue->irqqueue);
 queue->flags = drop_corrupted ? UVC_QUEUE_DROP_CORRUPTED : 0;
 queue->type = type;
}

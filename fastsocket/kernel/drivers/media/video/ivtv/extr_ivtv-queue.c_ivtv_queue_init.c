
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_queue {scalar_t__ bytesused; scalar_t__ length; scalar_t__ buffers; int list; } ;


 int INIT_LIST_HEAD (int *) ;

void ivtv_queue_init(struct ivtv_queue *q)
{
 INIT_LIST_HEAD(&q->list);
 q->buffers = 0;
 q->length = 0;
 q->bytesused = 0;
}

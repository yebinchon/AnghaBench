
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_queue {scalar_t__ bytesused; int depth; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;

void cx18_queue_init(struct cx18_queue *q)
{
 INIT_LIST_HEAD(&q->list);
 atomic_set(&q->depth, 0);
 q->bytesused = 0;
}

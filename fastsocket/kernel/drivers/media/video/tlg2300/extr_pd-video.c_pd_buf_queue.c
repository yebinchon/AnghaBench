
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {struct front_face* priv_data; } ;
struct videobuf_buffer {int queue; int state; } ;
struct front_face {int active; } ;


 int VIDEOBUF_QUEUED ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void pd_buf_queue(struct videobuf_queue *q, struct videobuf_buffer *vb)
{
 struct front_face *front = q->priv_data;
 vb->state = VIDEOBUF_QUEUED;
 list_add_tail(&vb->queue, &front->active);
}

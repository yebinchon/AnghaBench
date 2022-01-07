
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int type; } ;
struct videobuf_buffer {int state; int queue; } ;
struct v4l2_m2m_queue_ctx {int num_rdy; int rdy_queue; } ;
struct v4l2_m2m_ctx {int dummy; } ;


 int VIDEOBUF_QUEUED ;
 struct v4l2_m2m_queue_ctx* get_queue_ctx (struct v4l2_m2m_ctx*,int ) ;
 int list_add_tail (int *,int *) ;

void v4l2_m2m_buf_queue(struct v4l2_m2m_ctx *m2m_ctx, struct videobuf_queue *vq,
   struct videobuf_buffer *vb)
{
 struct v4l2_m2m_queue_ctx *q_ctx;

 q_ctx = get_queue_ctx(m2m_ctx, vq->type);
 if (!q_ctx)
  return;

 list_add_tail(&vb->queue, &q_ctx->rdy_queue);
 q_ctx->num_rdy++;

 vb->state = VIDEOBUF_QUEUED;
}

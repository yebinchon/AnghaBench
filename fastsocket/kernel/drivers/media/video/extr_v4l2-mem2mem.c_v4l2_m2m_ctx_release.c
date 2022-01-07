
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct videobuf_buffer {scalar_t__ state; int done; } ;
struct v4l2_m2m_dev {int job_spinlock; TYPE_1__* m2m_ops; } ;
struct TYPE_6__ {int q; } ;
struct TYPE_5__ {int q; } ;
struct v4l2_m2m_ctx {int job_flags; TYPE_3__ out_q_ctx; TYPE_2__ cap_q_ctx; int queue; int priv; struct v4l2_m2m_dev* m2m_dev; } ;
struct TYPE_4__ {int (* job_abort ) (int ) ;} ;


 int BUG_ON (int) ;
 int TRANS_QUEUED ;
 int TRANS_RUNNING ;
 scalar_t__ VIDEOBUF_ACTIVE ;
 scalar_t__ VIDEOBUF_QUEUED ;
 int dprintk (char*,struct v4l2_m2m_ctx*) ;
 int kfree (struct v4l2_m2m_ctx*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ) ;
 struct videobuf_buffer* v4l2_m2m_next_dst_buf (struct v4l2_m2m_ctx*) ;
 int videobuf_mmap_free (int *) ;
 int videobuf_stop (int *) ;
 int wait_event (int ,int) ;

void v4l2_m2m_ctx_release(struct v4l2_m2m_ctx *m2m_ctx)
{
 struct v4l2_m2m_dev *m2m_dev;
 struct videobuf_buffer *vb;
 unsigned long flags;

 m2m_dev = m2m_ctx->m2m_dev;

 spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
 if (m2m_ctx->job_flags & TRANS_RUNNING) {
  spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
  m2m_dev->m2m_ops->job_abort(m2m_ctx->priv);
  dprintk("m2m_ctx %p running, will wait to complete", m2m_ctx);
  vb = v4l2_m2m_next_dst_buf(m2m_ctx);
  BUG_ON(((void*)0) == vb);
  wait_event(vb->done, vb->state != VIDEOBUF_ACTIVE
         && vb->state != VIDEOBUF_QUEUED);
 } else if (m2m_ctx->job_flags & TRANS_QUEUED) {
  list_del(&m2m_ctx->queue);
  m2m_ctx->job_flags &= ~(TRANS_QUEUED | TRANS_RUNNING);
  spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
  dprintk("m2m_ctx: %p had been on queue and was removed\n",
   m2m_ctx);
 } else {

  spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
 }

 videobuf_stop(&m2m_ctx->cap_q_ctx.q);
 videobuf_stop(&m2m_ctx->out_q_ctx.q);

 videobuf_mmap_free(&m2m_ctx->cap_q_ctx.q);
 videobuf_mmap_free(&m2m_ctx->out_q_ctx.q);

 kfree(m2m_ctx);
}

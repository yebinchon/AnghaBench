
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_m2m_dev {int job_spinlock; struct v4l2_m2m_ctx* curr_ctx; } ;
struct v4l2_m2m_ctx {int job_flags; int queue; } ;


 int TRANS_QUEUED ;
 int TRANS_RUNNING ;
 int dprintk (char*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_m2m_try_run (struct v4l2_m2m_dev*) ;
 int v4l2_m2m_try_schedule (struct v4l2_m2m_ctx*) ;

void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
    struct v4l2_m2m_ctx *m2m_ctx)
{
 unsigned long flags;

 spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
 if (!m2m_dev->curr_ctx || m2m_dev->curr_ctx != m2m_ctx) {
  spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
  dprintk("Called by an instance not currently running\n");
  return;
 }

 list_del(&m2m_dev->curr_ctx->queue);
 m2m_dev->curr_ctx->job_flags &= ~(TRANS_QUEUED | TRANS_RUNNING);
 m2m_dev->curr_ctx = ((void*)0);

 spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);




 v4l2_m2m_try_schedule(m2m_ctx);
 v4l2_m2m_try_run(m2m_dev);
}

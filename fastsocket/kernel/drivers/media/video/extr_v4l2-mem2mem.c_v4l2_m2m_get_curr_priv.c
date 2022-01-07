
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_m2m_dev {int job_spinlock; TYPE_1__* curr_ctx; } ;
struct TYPE_2__ {void* priv; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void *v4l2_m2m_get_curr_priv(struct v4l2_m2m_dev *m2m_dev)
{
 unsigned long flags;
 void *ret = ((void*)0);

 spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
 if (m2m_dev->curr_ctx)
  ret = m2m_dev->curr_ctx->priv;
 spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);

 return ret;
}

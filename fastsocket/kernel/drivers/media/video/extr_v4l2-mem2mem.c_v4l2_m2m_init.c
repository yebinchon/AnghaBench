
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_m2m_ops {int job_abort; int device_run; } ;
struct v4l2_m2m_dev {int job_spinlock; int job_queue; struct v4l2_m2m_ops* m2m_ops; int * curr_ctx; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 struct v4l2_m2m_dev* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct v4l2_m2m_dev* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct v4l2_m2m_dev *v4l2_m2m_init(struct v4l2_m2m_ops *m2m_ops)
{
 struct v4l2_m2m_dev *m2m_dev;

 if (!m2m_ops)
  return ERR_PTR(-EINVAL);

 BUG_ON(!m2m_ops->device_run);
 BUG_ON(!m2m_ops->job_abort);

 m2m_dev = kzalloc(sizeof *m2m_dev, GFP_KERNEL);
 if (!m2m_dev)
  return ERR_PTR(-ENOMEM);

 m2m_dev->curr_ctx = ((void*)0);
 m2m_dev->m2m_ops = m2m_ops;
 INIT_LIST_HEAD(&m2m_dev->job_queue);
 spin_lock_init(&m2m_dev->job_spinlock);

 return m2m_dev;
}

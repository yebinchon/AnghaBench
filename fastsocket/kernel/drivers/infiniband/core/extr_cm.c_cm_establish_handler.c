
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cm_work {int list; int remote_id; int local_id; } ;
struct TYPE_6__ {TYPE_2__* port; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct cm_id_private {int lock; int work_list; int work_count; int msg; TYPE_3__ av; TYPE_1__ id; } ;
struct TYPE_5__ {int mad_agent; } ;


 int EINVAL ;
 scalar_t__ IB_CM_ESTABLISHED ;
 int atomic_inc_and_test (int *) ;
 struct cm_id_private* cm_acquire_id (int ,int ) ;
 int cm_deref_id (struct cm_id_private*) ;
 int cm_process_work (struct cm_id_private*,struct cm_work*) ;
 int ib_cancel_mad (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cm_establish_handler(struct cm_work *work)
{
 struct cm_id_private *cm_id_priv;
 int ret;


 cm_id_priv = cm_acquire_id(work->local_id, work->remote_id);
 if (!cm_id_priv)
  return -EINVAL;

 spin_lock_irq(&cm_id_priv->lock);
 if (cm_id_priv->id.state != IB_CM_ESTABLISHED) {
  spin_unlock_irq(&cm_id_priv->lock);
  goto out;
 }

 ib_cancel_mad(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
 ret = atomic_inc_and_test(&cm_id_priv->work_count);
 if (!ret)
  list_add_tail(&work->list, &cm_id_priv->work_list);
 spin_unlock_irq(&cm_id_priv->lock);

 if (ret)
  cm_process_work(cm_id_priv, work);
 else
  cm_deref_id(cm_id_priv);
 return 0;
out:
 cm_deref_id(cm_id_priv);
 return -EINVAL;
}

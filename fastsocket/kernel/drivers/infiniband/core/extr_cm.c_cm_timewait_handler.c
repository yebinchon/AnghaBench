
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cm_work {int list; } ;
struct TYPE_4__ {int remote_id; int local_id; } ;
struct cm_timewait_info {scalar_t__ remote_qpn; TYPE_1__ work; int list; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct cm_id_private {scalar_t__ remote_qpn; int lock; int work_list; int work_count; TYPE_2__ id; } ;
struct TYPE_6__ {int lock; } ;


 int EINVAL ;
 scalar_t__ IB_CM_IDLE ;
 scalar_t__ IB_CM_TIMEWAIT ;
 int atomic_inc_and_test (int *) ;
 TYPE_3__ cm ;
 struct cm_id_private* cm_acquire_id (int ,int ) ;
 int cm_deref_id (struct cm_id_private*) ;
 int cm_process_work (struct cm_id_private*,struct cm_work*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cm_timewait_handler(struct cm_work *work)
{
 struct cm_timewait_info *timewait_info;
 struct cm_id_private *cm_id_priv;
 int ret;

 timewait_info = (struct cm_timewait_info *)work;
 spin_lock_irq(&cm.lock);
 list_del(&timewait_info->list);
 spin_unlock_irq(&cm.lock);

 cm_id_priv = cm_acquire_id(timewait_info->work.local_id,
       timewait_info->work.remote_id);
 if (!cm_id_priv)
  return -EINVAL;

 spin_lock_irq(&cm_id_priv->lock);
 if (cm_id_priv->id.state != IB_CM_TIMEWAIT ||
     cm_id_priv->remote_qpn != timewait_info->remote_qpn) {
  spin_unlock_irq(&cm_id_priv->lock);
  goto out;
 }
 cm_id_priv->id.state = IB_CM_IDLE;
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

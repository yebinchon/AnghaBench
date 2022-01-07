
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct cm_id_private {int * timewait_info; TYPE_1__ id; } ;
struct TYPE_4__ {int lock; } ;


 int IB_CM_IDLE ;
 TYPE_2__ cm ;
 int cm_cleanup_timewait (int *) ;
 int kfree (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cm_reset_to_idle(struct cm_id_private *cm_id_priv)
{
 unsigned long flags;

 cm_id_priv->id.state = IB_CM_IDLE;
 if (cm_id_priv->timewait_info) {
  spin_lock_irqsave(&cm.lock, flags);
  cm_cleanup_timewait(cm_id_priv->timewait_info);
  spin_unlock_irqrestore(&cm.lock, flags);
  kfree(cm_id_priv->timewait_info);
  cm_id_priv->timewait_info = ((void*)0);
 }
}

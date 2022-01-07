
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cm_work {int list; TYPE_2__* mad_recv_wc; } ;
struct cm_rej_msg {int reason; } ;
struct TYPE_10__ {TYPE_4__* port; } ;
struct TYPE_8__ {int state; int lap_state; } ;
struct cm_id_private {int lock; int work_list; int work_count; int msg; TYPE_5__ av; TYPE_3__ id; } ;
struct TYPE_9__ {int mad_agent; } ;
struct TYPE_6__ {scalar_t__ mad; } ;
struct TYPE_7__ {TYPE_1__ recv_buf; } ;


 int EINVAL ;


 int IB_CM_LAP_SENT ;
 int IB_CM_LAP_UNINIT ;




 int IB_CM_REJ_STALE_CONN ;




 int __be16_to_cpu (int ) ;
 int atomic_inc_and_test (int *) ;
 struct cm_id_private* cm_acquire_rejected_id (struct cm_rej_msg*) ;
 int cm_deref_id (struct cm_id_private*) ;
 int cm_enter_timewait (struct cm_id_private*) ;
 int cm_format_rej_event (struct cm_work*) ;
 int cm_process_work (struct cm_id_private*,struct cm_work*) ;
 int cm_reset_to_idle (struct cm_id_private*) ;
 int ib_cancel_mad (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cm_rej_handler(struct cm_work *work)
{
 struct cm_id_private *cm_id_priv;
 struct cm_rej_msg *rej_msg;
 int ret;

 rej_msg = (struct cm_rej_msg *)work->mad_recv_wc->recv_buf.mad;
 cm_id_priv = cm_acquire_rejected_id(rej_msg);
 if (!cm_id_priv)
  return -EINVAL;

 cm_format_rej_event(work);

 spin_lock_irq(&cm_id_priv->lock);
 switch (cm_id_priv->id.state) {
 case 128:
 case 133:
 case 130:
 case 135:
  ib_cancel_mad(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);

 case 129:
 case 132:
  if (__be16_to_cpu(rej_msg->reason) == IB_CM_REJ_STALE_CONN)
   cm_enter_timewait(cm_id_priv);
  else
   cm_reset_to_idle(cm_id_priv);
  break;
 case 137:
  ib_cancel_mad(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);

 case 131:
 case 134:
  cm_enter_timewait(cm_id_priv);
  break;
 case 136:
  if (cm_id_priv->id.lap_state == IB_CM_LAP_UNINIT ||
      cm_id_priv->id.lap_state == IB_CM_LAP_SENT) {
   if (cm_id_priv->id.lap_state == IB_CM_LAP_SENT)
    ib_cancel_mad(cm_id_priv->av.port->mad_agent,
           cm_id_priv->msg);
   cm_enter_timewait(cm_id_priv);
   break;
  }

 default:
  spin_unlock_irq(&cm_id_priv->lock);
  ret = -EINVAL;
  goto out;
 }

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

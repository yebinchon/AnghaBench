
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_16__ {int service_timeout; } ;
struct TYPE_17__ {TYPE_3__ mra_rcvd; } ;
struct TYPE_18__ {TYPE_4__ param; int * private_data; } ;
struct cm_work {int list; TYPE_9__* port; TYPE_5__ cm_event; TYPE_2__* mad_recv_wc; } ;
struct cm_mra_msg {int private_data; } ;
struct TYPE_12__ {int state; int lap_state; } ;
struct TYPE_20__ {TYPE_6__* port; int timeout; } ;
struct cm_id_private {int lock; int work_list; int work_count; TYPE_10__ id; TYPE_11__* msg; TYPE_7__ av; } ;
struct TYPE_22__ {TYPE_8__* counter_group; } ;
struct TYPE_21__ {int * counter; } ;
struct TYPE_19__ {int mad_agent; } ;
struct TYPE_14__ {scalar_t__ mad; } ;
struct TYPE_15__ {TYPE_1__ recv_buf; } ;
struct TYPE_13__ {void** context; } ;


 size_t CM_MRA_COUNTER ;
 int CM_MSG_RESPONSE_OTHER ;
 int CM_MSG_RESPONSE_REP ;
 int CM_MSG_RESPONSE_REQ ;
 size_t CM_RECV_DUPLICATES ;
 int EINVAL ;

 int IB_CM_LAP_SENT ;
 int IB_CM_MRA_LAP_RCVD ;




 int atomic_inc_and_test (int *) ;
 int atomic_long_inc (int *) ;
 struct cm_id_private* cm_acquire_mraed_id (struct cm_mra_msg*) ;
 int cm_convert_to_ms (int ) ;
 int cm_deref_id (struct cm_id_private*) ;
 int cm_mra_get_msg_mraed (struct cm_mra_msg*) ;
 int cm_mra_get_service_timeout (struct cm_mra_msg*) ;
 int cm_process_work (struct cm_id_private*,struct cm_work*) ;
 int ib_modify_mad (int ,TYPE_11__*,int) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cm_mra_handler(struct cm_work *work)
{
 struct cm_id_private *cm_id_priv;
 struct cm_mra_msg *mra_msg;
 int timeout, ret;

 mra_msg = (struct cm_mra_msg *)work->mad_recv_wc->recv_buf.mad;
 cm_id_priv = cm_acquire_mraed_id(mra_msg);
 if (!cm_id_priv)
  return -EINVAL;

 work->cm_event.private_data = &mra_msg->private_data;
 work->cm_event.param.mra_rcvd.service_timeout =
     cm_mra_get_service_timeout(mra_msg);
 timeout = cm_convert_to_ms(cm_mra_get_service_timeout(mra_msg)) +
    cm_convert_to_ms(cm_id_priv->av.timeout);

 spin_lock_irq(&cm_id_priv->lock);
 switch (cm_id_priv->id.state) {
 case 128:
  if (cm_mra_get_msg_mraed(mra_msg) != CM_MSG_RESPONSE_REQ ||
      ib_modify_mad(cm_id_priv->av.port->mad_agent,
      cm_id_priv->msg, timeout))
   goto out;
  cm_id_priv->id.state = 130;
  break;
 case 129:
  if (cm_mra_get_msg_mraed(mra_msg) != CM_MSG_RESPONSE_REP ||
      ib_modify_mad(cm_id_priv->av.port->mad_agent,
      cm_id_priv->msg, timeout))
   goto out;
  cm_id_priv->id.state = 131;
  break;
 case 132:
  if (cm_mra_get_msg_mraed(mra_msg) != CM_MSG_RESPONSE_OTHER ||
      cm_id_priv->id.lap_state != IB_CM_LAP_SENT ||
      ib_modify_mad(cm_id_priv->av.port->mad_agent,
      cm_id_priv->msg, timeout)) {
   if (cm_id_priv->id.lap_state == IB_CM_MRA_LAP_RCVD)
    atomic_long_inc(&work->port->
      counter_group[CM_RECV_DUPLICATES].
      counter[CM_MRA_COUNTER]);
   goto out;
  }
  cm_id_priv->id.lap_state = IB_CM_MRA_LAP_RCVD;
  break;
 case 130:
 case 131:
  atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
    counter[CM_MRA_COUNTER]);

 default:
  goto out;
 }

 cm_id_priv->msg->context[1] = (void *) (unsigned long)
          cm_id_priv->id.state;
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
 spin_unlock_irq(&cm_id_priv->lock);
 cm_deref_id(cm_id_priv);
 return -EINVAL;
}

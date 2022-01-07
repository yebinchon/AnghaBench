
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct cm_work {int list; TYPE_7__* mad_recv_wc; int port; } ;
struct cm_rep_msg {int initiator_depth; int resp_resources; int local_comm_id; int local_ca_guid; int remote_comm_id; } ;
struct TYPE_17__ {TYPE_5__* port; void* timeout; } ;
struct TYPE_15__ {void* timeout; } ;
struct TYPE_14__ {int state; int remote_id; } ;
struct cm_id_private {int lock; int work_list; int work_count; int msg; TYPE_6__ av; TYPE_4__ alt_av; int target_ack_delay; int rnr_retry_count; int sq_psn; int responder_resources; int initiator_depth; int qp_type; void* remote_qpn; TYPE_3__ id; TYPE_8__* timewait_info; } ;
struct TYPE_13__ {int remote_id; } ;
struct TYPE_19__ {scalar_t__ inserted_remote_id; int remote_id_node; void* remote_qpn; int remote_ca_guid; TYPE_2__ work; } ;
struct TYPE_12__ {scalar_t__ mad; } ;
struct TYPE_18__ {TYPE_1__ recv_buf; } ;
struct TYPE_16__ {int mad_agent; } ;
struct TYPE_11__ {int lock; int remote_id_table; } ;


 int CM_MSG_RESPONSE_REP ;
 int EINVAL ;

 int IB_CM_REJ_STALE_CONN ;
 int IB_CM_REP_RCVD ;

 int atomic_inc_and_test (int *) ;
 TYPE_10__ cm ;
 void* cm_ack_timeout (int ,void*) ;
 struct cm_id_private* cm_acquire_id (int ,int ) ;
 int cm_deref_id (struct cm_id_private*) ;
 int cm_dup_rep_handler (struct cm_work*) ;
 int cm_format_rep_event (struct cm_work*,int ) ;
 scalar_t__ cm_insert_remote_id (TYPE_8__*) ;
 scalar_t__ cm_insert_remote_qpn (TYPE_8__*) ;
 int cm_issue_rej (int ,TYPE_7__*,int ,int ,int *,int ) ;
 int cm_process_work (struct cm_id_private*,struct cm_work*) ;
 void* cm_rep_get_qpn (struct cm_rep_msg*,int ) ;
 int cm_rep_get_rnr_retry_count (struct cm_rep_msg*) ;
 int cm_rep_get_starting_psn (struct cm_rep_msg*) ;
 int cm_rep_get_target_ack_delay (struct cm_rep_msg*) ;
 int ib_cancel_mad (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cm_rep_handler(struct cm_work *work)
{
 struct cm_id_private *cm_id_priv;
 struct cm_rep_msg *rep_msg;
 int ret;

 rep_msg = (struct cm_rep_msg *)work->mad_recv_wc->recv_buf.mad;
 cm_id_priv = cm_acquire_id(rep_msg->remote_comm_id, 0);
 if (!cm_id_priv) {
  cm_dup_rep_handler(work);
  return -EINVAL;
 }

 cm_format_rep_event(work, cm_id_priv->qp_type);

 spin_lock_irq(&cm_id_priv->lock);
 switch (cm_id_priv->id.state) {
 case 128:
 case 129:
  break;
 default:
  spin_unlock_irq(&cm_id_priv->lock);
  ret = -EINVAL;
  goto error;
 }

 cm_id_priv->timewait_info->work.remote_id = rep_msg->local_comm_id;
 cm_id_priv->timewait_info->remote_ca_guid = rep_msg->local_ca_guid;
 cm_id_priv->timewait_info->remote_qpn = cm_rep_get_qpn(rep_msg, cm_id_priv->qp_type);

 spin_lock(&cm.lock);

 if (cm_insert_remote_id(cm_id_priv->timewait_info)) {
  spin_unlock(&cm.lock);
  spin_unlock_irq(&cm_id_priv->lock);
  ret = -EINVAL;
  goto error;
 }

 if (cm_insert_remote_qpn(cm_id_priv->timewait_info)) {
  rb_erase(&cm_id_priv->timewait_info->remote_id_node,
    &cm.remote_id_table);
  cm_id_priv->timewait_info->inserted_remote_id = 0;
  spin_unlock(&cm.lock);
  spin_unlock_irq(&cm_id_priv->lock);
  cm_issue_rej(work->port, work->mad_recv_wc,
        IB_CM_REJ_STALE_CONN, CM_MSG_RESPONSE_REP,
        ((void*)0), 0);
  ret = -EINVAL;
  goto error;
 }
 spin_unlock(&cm.lock);

 cm_id_priv->id.state = IB_CM_REP_RCVD;
 cm_id_priv->id.remote_id = rep_msg->local_comm_id;
 cm_id_priv->remote_qpn = cm_rep_get_qpn(rep_msg, cm_id_priv->qp_type);
 cm_id_priv->initiator_depth = rep_msg->resp_resources;
 cm_id_priv->responder_resources = rep_msg->initiator_depth;
 cm_id_priv->sq_psn = cm_rep_get_starting_psn(rep_msg);
 cm_id_priv->rnr_retry_count = cm_rep_get_rnr_retry_count(rep_msg);
 cm_id_priv->target_ack_delay = cm_rep_get_target_ack_delay(rep_msg);
 cm_id_priv->av.timeout =
   cm_ack_timeout(cm_id_priv->target_ack_delay,
           cm_id_priv->av.timeout - 1);
 cm_id_priv->alt_av.timeout =
   cm_ack_timeout(cm_id_priv->target_ack_delay,
           cm_id_priv->alt_av.timeout - 1);



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

error:
 cm_deref_id(cm_id_priv);
 return ret;
}

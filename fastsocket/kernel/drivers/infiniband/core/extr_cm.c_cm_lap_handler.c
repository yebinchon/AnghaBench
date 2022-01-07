
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ib_mad_send_buf {scalar_t__ mad; } ;
struct ib_cm_lap_event_param {int * alternate_path; } ;
struct TYPE_10__ {struct ib_cm_lap_event_param lap_rcvd; } ;
struct TYPE_11__ {int * private_data; TYPE_1__ param; } ;
struct cm_work {int list; TYPE_9__* mad_recv_wc; TYPE_7__* port; TYPE_2__ cm_event; int * path; } ;
struct cm_mra_msg {int dummy; } ;
struct TYPE_14__ {int tid; } ;
struct cm_lap_msg {TYPE_5__ hdr; int private_data; int local_comm_id; int remote_comm_id; } ;
struct TYPE_13__ {scalar_t__ state; int lap_state; } ;
struct cm_id_private {int lock; int work_list; int work_count; int alt_av; int av; int tid; TYPE_4__ id; int private_data_len; int private_data; int service_timeout; } ;
struct TYPE_15__ {int grh; scalar_t__ mad; } ;
struct TYPE_17__ {TYPE_6__ recv_buf; int wc; } ;
struct TYPE_16__ {TYPE_3__* counter_group; } ;
struct TYPE_12__ {int * counter; } ;


 size_t CM_LAP_COUNTER ;
 int CM_MSG_RESPONSE_OTHER ;
 size_t CM_RECV_DUPLICATES ;
 int EINVAL ;
 scalar_t__ IB_CM_ESTABLISHED ;




 int atomic_inc_and_test (int *) ;
 int atomic_long_inc (int *) ;
 struct cm_id_private* cm_acquire_id (int ,int ) ;
 int cm_alloc_response_msg (TYPE_7__*,TYPE_9__*,struct ib_mad_send_buf**) ;
 int cm_deref_id (struct cm_id_private*) ;
 int cm_format_mra (struct cm_mra_msg*,struct cm_id_private*,int ,int ,int ,int ) ;
 int cm_format_path_from_lap (struct cm_id_private*,int *,struct cm_lap_msg*) ;
 int cm_free_msg (struct ib_mad_send_buf*) ;
 int cm_init_av_by_path (int *,int *) ;
 int cm_init_av_for_response (TYPE_7__*,int ,int ,int *) ;
 int cm_process_work (struct cm_id_private*,struct cm_work*) ;
 int ib_post_send_mad (struct ib_mad_send_buf*,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cm_lap_handler(struct cm_work *work)
{
 struct cm_id_private *cm_id_priv;
 struct cm_lap_msg *lap_msg;
 struct ib_cm_lap_event_param *param;
 struct ib_mad_send_buf *msg = ((void*)0);
 int ret;


 lap_msg = (struct cm_lap_msg *)work->mad_recv_wc->recv_buf.mad;
 cm_id_priv = cm_acquire_id(lap_msg->remote_comm_id,
       lap_msg->local_comm_id);
 if (!cm_id_priv)
  return -EINVAL;

 param = &work->cm_event.param.lap_rcvd;
 param->alternate_path = &work->path[0];
 cm_format_path_from_lap(cm_id_priv, param->alternate_path, lap_msg);
 work->cm_event.private_data = &lap_msg->private_data;

 spin_lock_irq(&cm_id_priv->lock);
 if (cm_id_priv->id.state != IB_CM_ESTABLISHED)
  goto unlock;

 switch (cm_id_priv->id.lap_state) {
 case 129:
 case 131:
  break;
 case 128:
  atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
    counter[CM_LAP_COUNTER]);
  if (cm_alloc_response_msg(work->port, work->mad_recv_wc, &msg))
   goto unlock;

  cm_format_mra((struct cm_mra_msg *) msg->mad, cm_id_priv,
         CM_MSG_RESPONSE_OTHER,
         cm_id_priv->service_timeout,
         cm_id_priv->private_data,
         cm_id_priv->private_data_len);
  spin_unlock_irq(&cm_id_priv->lock);

  if (ib_post_send_mad(msg, ((void*)0)))
   cm_free_msg(msg);
  goto deref;
 case 130:
  atomic_long_inc(&work->port->counter_group[CM_RECV_DUPLICATES].
    counter[CM_LAP_COUNTER]);
  goto unlock;
 default:
  goto unlock;
 }

 cm_id_priv->id.lap_state = 130;
 cm_id_priv->tid = lap_msg->hdr.tid;
 cm_init_av_for_response(work->port, work->mad_recv_wc->wc,
    work->mad_recv_wc->recv_buf.grh,
    &cm_id_priv->av);
 cm_init_av_by_path(param->alternate_path, &cm_id_priv->alt_av);
 ret = atomic_inc_and_test(&cm_id_priv->work_count);
 if (!ret)
  list_add_tail(&work->list, &cm_id_priv->work_list);
 spin_unlock_irq(&cm_id_priv->lock);

 if (ret)
  cm_process_work(cm_id_priv, work);
 else
  cm_deref_id(cm_id_priv);
 return 0;

unlock: spin_unlock_irq(&cm_id_priv->lock);
deref: cm_deref_id(cm_id_priv);
 return -EINVAL;
}

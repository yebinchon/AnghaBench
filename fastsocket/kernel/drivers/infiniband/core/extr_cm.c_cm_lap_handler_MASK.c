#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ib_mad_send_buf {scalar_t__ mad; } ;
struct ib_cm_lap_event_param {int /*<<< orphan*/ * alternate_path; } ;
struct TYPE_10__ {struct ib_cm_lap_event_param lap_rcvd; } ;
struct TYPE_11__ {int /*<<< orphan*/ * private_data; TYPE_1__ param; } ;
struct cm_work {int /*<<< orphan*/  list; TYPE_9__* mad_recv_wc; TYPE_7__* port; TYPE_2__ cm_event; int /*<<< orphan*/ * path; } ;
struct cm_mra_msg {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  tid; } ;
struct cm_lap_msg {TYPE_5__ hdr; int /*<<< orphan*/  private_data; int /*<<< orphan*/  local_comm_id; int /*<<< orphan*/  remote_comm_id; } ;
struct TYPE_13__ {scalar_t__ state; int lap_state; } ;
struct cm_id_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_count; int /*<<< orphan*/  alt_av; int /*<<< orphan*/  av; int /*<<< orphan*/  tid; TYPE_4__ id; int /*<<< orphan*/  private_data_len; int /*<<< orphan*/  private_data; int /*<<< orphan*/  service_timeout; } ;
struct TYPE_15__ {int /*<<< orphan*/  grh; scalar_t__ mad; } ;
struct TYPE_17__ {TYPE_6__ recv_buf; int /*<<< orphan*/  wc; } ;
struct TYPE_16__ {TYPE_3__* counter_group; } ;
struct TYPE_12__ {int /*<<< orphan*/ * counter; } ;

/* Variables and functions */
 size_t CM_LAP_COUNTER ; 
 int /*<<< orphan*/  CM_MSG_RESPONSE_OTHER ; 
 size_t CM_RECV_DUPLICATES ; 
 int EINVAL ; 
 scalar_t__ IB_CM_ESTABLISHED ; 
#define  IB_CM_LAP_IDLE 131 
#define  IB_CM_LAP_RCVD 130 
#define  IB_CM_LAP_UNINIT 129 
#define  IB_CM_MRA_LAP_SENT 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cm_id_private* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,TYPE_9__*,struct ib_mad_send_buf**) ; 
 int /*<<< orphan*/  FUNC4 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct cm_mra_msg*,struct cm_id_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_id_private*,int /*<<< orphan*/ *,struct cm_lap_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct cm_work *work)
{
	struct cm_id_private *cm_id_priv;
	struct cm_lap_msg *lap_msg;
	struct ib_cm_lap_event_param *param;
	struct ib_mad_send_buf *msg = NULL;
	int ret;

	/* todo: verify LAP request and send reject APR if invalid. */
	lap_msg = (struct cm_lap_msg *)work->mad_recv_wc->recv_buf.mad;
	cm_id_priv = FUNC2(lap_msg->remote_comm_id,
				   lap_msg->local_comm_id);
	if (!cm_id_priv)
		return -EINVAL;

	param = &work->cm_event.param.lap_rcvd;
	param->alternate_path = &work->path[0];
	FUNC6(cm_id_priv, param->alternate_path, lap_msg);
	work->cm_event.private_data = &lap_msg->private_data;

	FUNC13(&cm_id_priv->lock);
	if (cm_id_priv->id.state != IB_CM_ESTABLISHED)
		goto unlock;

	switch (cm_id_priv->id.lap_state) {
	case IB_CM_LAP_UNINIT:
	case IB_CM_LAP_IDLE:
		break;
	case IB_CM_MRA_LAP_SENT:
		FUNC1(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_LAP_COUNTER]);
		if (FUNC3(work->port, work->mad_recv_wc, &msg))
			goto unlock;

		FUNC5((struct cm_mra_msg *) msg->mad, cm_id_priv,
			      CM_MSG_RESPONSE_OTHER,
			      cm_id_priv->service_timeout,
			      cm_id_priv->private_data,
			      cm_id_priv->private_data_len);
		FUNC14(&cm_id_priv->lock);

		if (FUNC11(msg, NULL))
			FUNC7(msg);
		goto deref;
	case IB_CM_LAP_RCVD:
		FUNC1(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_LAP_COUNTER]);
		goto unlock;
	default:
		goto unlock;
	}

	cm_id_priv->id.lap_state = IB_CM_LAP_RCVD;
	cm_id_priv->tid = lap_msg->hdr.tid;
	FUNC9(work->port, work->mad_recv_wc->wc,
				work->mad_recv_wc->recv_buf.grh,
				&cm_id_priv->av);
	FUNC8(param->alternate_path, &cm_id_priv->alt_av);
	ret = FUNC0(&cm_id_priv->work_count);
	if (!ret)
		FUNC12(&work->list, &cm_id_priv->work_list);
	FUNC14(&cm_id_priv->lock);

	if (ret)
		FUNC10(cm_id_priv, work);
	else
		FUNC4(cm_id_priv);
	return 0;

unlock:	FUNC14(&cm_id_priv->lock);
deref:	FUNC4(cm_id_priv);
	return -EINVAL;
}
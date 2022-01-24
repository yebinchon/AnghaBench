#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct ib_mad_send_buf {scalar_t__ mad; } ;
struct TYPE_13__ {int /*<<< orphan*/ * private_data; } ;
struct cm_work {int /*<<< orphan*/  list; TYPE_8__* port; TYPE_9__* mad_recv_wc; TYPE_2__ cm_event; } ;
struct TYPE_17__ {int state; int /*<<< orphan*/  lap_state; } ;
struct TYPE_15__ {TYPE_3__* port; } ;
struct cm_id_private {scalar_t__ local_qpn; int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_count; int /*<<< orphan*/  tid; TYPE_6__ id; int /*<<< orphan*/  private_data_len; int /*<<< orphan*/  private_data; int /*<<< orphan*/  msg; TYPE_4__ av; } ;
struct TYPE_18__ {int /*<<< orphan*/  tid; } ;
struct cm_dreq_msg {TYPE_7__ hdr; int /*<<< orphan*/  private_data; int /*<<< orphan*/  local_comm_id; int /*<<< orphan*/  remote_comm_id; } ;
struct cm_drep_msg {int dummy; } ;
struct TYPE_12__ {scalar_t__ mad; } ;
struct TYPE_20__ {TYPE_1__ recv_buf; } ;
struct TYPE_19__ {TYPE_5__* counter_group; } ;
struct TYPE_16__ {int /*<<< orphan*/ * counter; } ;
struct TYPE_14__ {int /*<<< orphan*/  mad_agent; } ;

/* Variables and functions */
 size_t CM_DREQ_COUNTER ; 
 size_t CM_RECV_DUPLICATES ; 
 int EINVAL ; 
#define  IB_CM_DREQ_RCVD 133 
#define  IB_CM_DREQ_SENT 132 
#define  IB_CM_ESTABLISHED 131 
 int /*<<< orphan*/  IB_CM_LAP_SENT ; 
 int /*<<< orphan*/  IB_CM_MRA_LAP_RCVD ; 
#define  IB_CM_MRA_REP_RCVD 130 
#define  IB_CM_REP_SENT 129 
#define  IB_CM_TIMEWAIT 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cm_id_private* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,TYPE_9__*,struct ib_mad_send_buf**) ; 
 int /*<<< orphan*/  FUNC4 (struct cm_id_private*) ; 
 scalar_t__ FUNC5 (struct cm_dreq_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_drep_msg*,struct cm_id_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_mad_send_buf*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct cm_work *work)
{
	struct cm_id_private *cm_id_priv;
	struct cm_dreq_msg *dreq_msg;
	struct ib_mad_send_buf *msg = NULL;
	int ret;

	dreq_msg = (struct cm_dreq_msg *)work->mad_recv_wc->recv_buf.mad;
	cm_id_priv = FUNC2(dreq_msg->remote_comm_id,
				   dreq_msg->local_comm_id);
	if (!cm_id_priv) {
		FUNC1(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_DREQ_COUNTER]);
		FUNC8(work->port, work->mad_recv_wc);
		return -EINVAL;
	}

	work->cm_event.private_data = &dreq_msg->private_data;

	FUNC13(&cm_id_priv->lock);
	if (cm_id_priv->local_qpn != FUNC5(dreq_msg))
		goto unlock;

	switch (cm_id_priv->id.state) {
	case IB_CM_REP_SENT:
	case IB_CM_DREQ_SENT:
		FUNC10(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
		break;
	case IB_CM_ESTABLISHED:
		if (cm_id_priv->id.lap_state == IB_CM_LAP_SENT ||
		    cm_id_priv->id.lap_state == IB_CM_MRA_LAP_RCVD)
			FUNC10(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
		break;
	case IB_CM_MRA_REP_RCVD:
		break;
	case IB_CM_TIMEWAIT:
		FUNC1(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_DREQ_COUNTER]);
		if (FUNC3(work->port, work->mad_recv_wc, &msg))
			goto unlock;

		FUNC6((struct cm_drep_msg *) msg->mad, cm_id_priv,
			       cm_id_priv->private_data,
			       cm_id_priv->private_data_len);
		FUNC14(&cm_id_priv->lock);

		if (FUNC11(msg, NULL))
			FUNC7(msg);
		goto deref;
	case IB_CM_DREQ_RCVD:
		FUNC1(&work->port->counter_group[CM_RECV_DUPLICATES].
				counter[CM_DREQ_COUNTER]);
		goto unlock;
	default:
		goto unlock;
	}
	cm_id_priv->id.state = IB_CM_DREQ_RCVD;
	cm_id_priv->tid = dreq_msg->hdr.tid;
	ret = FUNC0(&cm_id_priv->work_count);
	if (!ret)
		FUNC12(&work->list, &cm_id_priv->work_list);
	FUNC14(&cm_id_priv->lock);

	if (ret)
		FUNC9(cm_id_priv, work);
	else
		FUNC4(cm_id_priv);
	return 0;

unlock:	FUNC14(&cm_id_priv->lock);
deref:	FUNC4(cm_id_priv);
	return -EINVAL;
}
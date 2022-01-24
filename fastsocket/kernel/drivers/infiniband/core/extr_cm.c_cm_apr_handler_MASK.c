#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  info_len; int /*<<< orphan*/ * apr_info; int /*<<< orphan*/  ap_status; } ;
struct TYPE_12__ {TYPE_3__ apr_rcvd; } ;
struct TYPE_13__ {int /*<<< orphan*/ * private_data; TYPE_4__ param; } ;
struct cm_work {int /*<<< orphan*/  list; TYPE_5__ cm_event; TYPE_2__* mad_recv_wc; } ;
struct TYPE_16__ {TYPE_7__* port; } ;
struct TYPE_14__ {scalar_t__ state; scalar_t__ lap_state; } ;
struct cm_id_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_count; int /*<<< orphan*/ * msg; TYPE_8__ av; TYPE_6__ id; } ;
struct cm_apr_msg {int /*<<< orphan*/  private_data; int /*<<< orphan*/  info_length; int /*<<< orphan*/  info; int /*<<< orphan*/  ap_status; int /*<<< orphan*/  local_comm_id; int /*<<< orphan*/  remote_comm_id; } ;
struct TYPE_15__ {int /*<<< orphan*/  mad_agent; } ;
struct TYPE_9__ {scalar_t__ mad; } ;
struct TYPE_10__ {TYPE_1__ recv_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IB_CM_ESTABLISHED ; 
 scalar_t__ IB_CM_LAP_IDLE ; 
 scalar_t__ IB_CM_LAP_SENT ; 
 scalar_t__ IB_CM_MRA_LAP_RCVD ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct cm_id_private* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct cm_work *work)
{
	struct cm_id_private *cm_id_priv;
	struct cm_apr_msg *apr_msg;
	int ret;

	apr_msg = (struct cm_apr_msg *)work->mad_recv_wc->recv_buf.mad;
	cm_id_priv = FUNC1(apr_msg->remote_comm_id,
				   apr_msg->local_comm_id);
	if (!cm_id_priv)
		return -EINVAL; /* Unmatched reply. */

	work->cm_event.param.apr_rcvd.ap_status = apr_msg->ap_status;
	work->cm_event.param.apr_rcvd.apr_info = &apr_msg->info;
	work->cm_event.param.apr_rcvd.info_len = apr_msg->info_length;
	work->cm_event.private_data = &apr_msg->private_data;

	FUNC6(&cm_id_priv->lock);
	if (cm_id_priv->id.state != IB_CM_ESTABLISHED ||
	    (cm_id_priv->id.lap_state != IB_CM_LAP_SENT &&
	     cm_id_priv->id.lap_state != IB_CM_MRA_LAP_RCVD)) {
		FUNC7(&cm_id_priv->lock);
		goto out;
	}
	cm_id_priv->id.lap_state = IB_CM_LAP_IDLE;
	FUNC4(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
	cm_id_priv->msg = NULL;

	ret = FUNC0(&cm_id_priv->work_count);
	if (!ret)
		FUNC5(&work->list, &cm_id_priv->work_list);
	FUNC7(&cm_id_priv->lock);

	if (ret)
		FUNC3(cm_id_priv, work);
	else
		FUNC2(cm_id_priv);
	return 0;
out:
	FUNC2(cm_id_priv);
	return -EINVAL;
}
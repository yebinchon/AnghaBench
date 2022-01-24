#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ib_cm_req_event_param {int /*<<< orphan*/  srq; int /*<<< orphan*/  rnr_retry_count; int /*<<< orphan*/  retry_count; int /*<<< orphan*/  remote_cm_response_timeout; int /*<<< orphan*/  flow_control; int /*<<< orphan*/  local_cm_response_timeout; int /*<<< orphan*/  initiator_depth; int /*<<< orphan*/  responder_resources; void* starting_psn; int /*<<< orphan*/  qp_type; void* remote_qpn; void* remote_qkey; int /*<<< orphan*/  remote_ca_guid; int /*<<< orphan*/ * alternate_path; int /*<<< orphan*/ * primary_path; int /*<<< orphan*/  port; struct ib_cm_id* listen_id; } ;
struct ib_cm_id {int dummy; } ;
struct TYPE_9__ {struct ib_cm_req_event_param req_rcvd; } ;
struct TYPE_12__ {int /*<<< orphan*/ * private_data; TYPE_3__ param; } ;
struct cm_work {TYPE_6__ cm_event; int /*<<< orphan*/ * path; TYPE_2__* mad_recv_wc; } ;
struct cm_req_msg {int /*<<< orphan*/  private_data; int /*<<< orphan*/  local_qkey; int /*<<< orphan*/  local_ca_guid; scalar_t__ alt_local_lid; } ;
struct TYPE_11__ {TYPE_4__* port; } ;
struct cm_id_private {TYPE_5__ av; } ;
struct TYPE_10__ {int /*<<< orphan*/  port_num; } ;
struct TYPE_7__ {scalar_t__ mad; } ;
struct TYPE_8__ {TYPE_1__ recv_buf; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC11 (struct cm_req_msg*) ; 

__attribute__((used)) static void FUNC12(struct cm_work *work,
				struct cm_id_private *cm_id_priv,
				struct ib_cm_id *listen_id)
{
	struct cm_req_msg *req_msg;
	struct ib_cm_req_event_param *param;

	req_msg = (struct cm_req_msg *)work->mad_recv_wc->recv_buf.mad;
	param = &work->cm_event.param.req_rcvd;
	param->listen_id = listen_id;
	param->port = cm_id_priv->av.port->port_num;
	param->primary_path = &work->path[0];
	if (req_msg->alt_local_lid)
		param->alternate_path = &work->path[1];
	else
		param->alternate_path = NULL;
	param->remote_ca_guid = req_msg->local_ca_guid;
	param->remote_qkey = FUNC0(req_msg->local_qkey);
	param->remote_qpn = FUNC0(FUNC3(req_msg));
	param->qp_type = FUNC5(req_msg);
	param->starting_psn = FUNC0(FUNC11(req_msg));
	param->responder_resources = FUNC2(req_msg);
	param->initiator_depth = FUNC7(req_msg);
	param->local_cm_response_timeout =
					FUNC6(req_msg);
	param->flow_control = FUNC1(req_msg);
	param->remote_cm_response_timeout =
					FUNC4(req_msg);
	param->retry_count = FUNC8(req_msg);
	param->rnr_retry_count = FUNC9(req_msg);
	param->srq = FUNC10(req_msg);
	work->cm_event.private_data = &req_msg->private_data;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ib_sa_path_rec {int hop_limit; int /*<<< orphan*/  packet_life_time; int /*<<< orphan*/  sl; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  rate; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  dgid; int /*<<< orphan*/  sgid; void* dlid; void* slid; int /*<<< orphan*/  mtu; int /*<<< orphan*/  pkey; } ;
struct ib_cm_req_param {scalar_t__ qp_type; scalar_t__ private_data_len; scalar_t__ private_data; int /*<<< orphan*/  srq; int /*<<< orphan*/  rnr_retry_count; int /*<<< orphan*/  retry_count; int /*<<< orphan*/  responder_resources; int /*<<< orphan*/  max_cm_retries; struct ib_sa_path_rec* primary_path; int /*<<< orphan*/  local_cm_response_timeout; int /*<<< orphan*/  starting_psn; int /*<<< orphan*/  flow_control; int /*<<< orphan*/  remote_cm_response_timeout; int /*<<< orphan*/  initiator_depth; int /*<<< orphan*/  qp_num; int /*<<< orphan*/  service_id; struct ib_sa_path_rec* alternate_path; } ;
struct cm_req_msg {int primary_hop_limit; int alt_hop_limit; int /*<<< orphan*/  private_data; int /*<<< orphan*/  alt_traffic_class; int /*<<< orphan*/  alt_remote_gid; int /*<<< orphan*/  alt_local_gid; void* alt_remote_lid; void* alt_local_lid; int /*<<< orphan*/  primary_traffic_class; int /*<<< orphan*/  primary_remote_gid; int /*<<< orphan*/  primary_local_gid; void* primary_remote_lid; void* primary_local_lid; int /*<<< orphan*/  pkey; int /*<<< orphan*/  local_ca_guid; int /*<<< orphan*/  service_id; int /*<<< orphan*/  local_comm_id; int /*<<< orphan*/  hdr; } ;
struct TYPE_10__ {TYPE_4__* port; } ;
struct TYPE_7__ {TYPE_1__* device; int /*<<< orphan*/  local_id; } ;
struct cm_id_private {TYPE_5__ av; TYPE_2__ id; } ;
struct TYPE_9__ {TYPE_3__* cm_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  ack_delay; } ;
struct TYPE_6__ {int /*<<< orphan*/  node_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_MSG_SEQUENCE_REQ ; 
 int /*<<< orphan*/  CM_REQ_ATTR_ID ; 
 void* IB_LID_PERMISSIVE ; 
 scalar_t__ IB_QPT_XRC_INI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cm_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cm_req_msg*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct cm_req_msg*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct cm_req_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct cm_req_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC28(struct cm_req_msg *req_msg,
			  struct cm_id_private *cm_id_priv,
			  struct ib_cm_req_param *param)
{
	struct ib_sa_path_rec *pri_path = param->primary_path;
	struct ib_sa_path_rec *alt_path = param->alternate_path;

	FUNC2(&req_msg->hdr, CM_REQ_ATTR_ID,
			  FUNC1(cm_id_priv, CM_MSG_SEQUENCE_REQ));

	req_msg->local_comm_id = cm_id_priv->id.local_id;
	req_msg->service_id = param->service_id;
	req_msg->local_ca_guid = cm_id_priv->id.device->node_guid;
	FUNC10(req_msg, FUNC26(param->qp_num));
	FUNC9(req_msg, param->initiator_depth);
	FUNC20(req_msg,
				       param->remote_cm_response_timeout);
	FUNC19(req_msg, param->qp_type);
	FUNC8(req_msg, param->flow_control);
	FUNC25(req_msg, FUNC26(param->starting_psn));
	FUNC11(req_msg,
				      param->local_cm_response_timeout);
	req_msg->pkey = param->primary_path->pkey;
	FUNC13(req_msg, param->primary_path->mtu);
	FUNC12(req_msg, param->max_cm_retries);

	if (param->qp_type != IB_QPT_XRC_INI) {
		FUNC21(req_msg, param->responder_resources);
		FUNC22(req_msg, param->retry_count);
		FUNC23(req_msg, param->rnr_retry_count);
		FUNC24(req_msg, param->srq);
	}

	if (pri_path->hop_limit <= 1) {
		req_msg->primary_local_lid = pri_path->slid;
		req_msg->primary_remote_lid = pri_path->dlid;
	} else {
		/* Work-around until there's a way to obtain remote LID info */
		req_msg->primary_local_lid = IB_LID_PERMISSIVE;
		req_msg->primary_remote_lid = IB_LID_PERMISSIVE;
	}
	req_msg->primary_local_gid = pri_path->sgid;
	req_msg->primary_remote_gid = pri_path->dgid;
	FUNC14(req_msg, pri_path->flow_label);
	FUNC16(req_msg, pri_path->rate);
	req_msg->primary_traffic_class = pri_path->traffic_class;
	req_msg->primary_hop_limit = pri_path->hop_limit;
	FUNC17(req_msg, pri_path->sl);
	FUNC18(req_msg, (pri_path->hop_limit <= 1));
	FUNC15(req_msg,
		FUNC0(cm_id_priv->av.port->cm_dev->ack_delay,
			       pri_path->packet_life_time));

	if (alt_path) {
		if (alt_path->hop_limit <= 1) {
			req_msg->alt_local_lid = alt_path->slid;
			req_msg->alt_remote_lid = alt_path->dlid;
		} else {
			req_msg->alt_local_lid = IB_LID_PERMISSIVE;
			req_msg->alt_remote_lid = IB_LID_PERMISSIVE;
		}
		req_msg->alt_local_gid = alt_path->sgid;
		req_msg->alt_remote_gid = alt_path->dgid;
		FUNC3(req_msg,
					  alt_path->flow_label);
		FUNC5(req_msg, alt_path->rate);
		req_msg->alt_traffic_class = alt_path->traffic_class;
		req_msg->alt_hop_limit = alt_path->hop_limit;
		FUNC6(req_msg, alt_path->sl);
		FUNC7(req_msg, (alt_path->hop_limit <= 1));
		FUNC4(req_msg,
			FUNC0(cm_id_priv->av.port->cm_dev->ack_delay,
				       alt_path->packet_life_time));
	}

	if (param->private_data && param->private_data_len)
		FUNC27(req_msg->private_data, param->private_data,
		       param->private_data_len);
}
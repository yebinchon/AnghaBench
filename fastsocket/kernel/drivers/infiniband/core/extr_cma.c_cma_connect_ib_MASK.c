#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rdma_route {int num_paths; int /*<<< orphan*/ * path_rec; } ;
struct TYPE_3__ {struct ib_cm_id* ib; } ;
struct TYPE_4__ {int /*<<< orphan*/  qp_type; struct rdma_route route; int /*<<< orphan*/  device; } ;
struct rdma_id_private {TYPE_1__ cm_id; scalar_t__ srq; int /*<<< orphan*/  seq_num; TYPE_2__ id; int /*<<< orphan*/  qp_num; } ;
struct rdma_conn_param {scalar_t__ private_data_len; int /*<<< orphan*/  rnr_retry_count; int /*<<< orphan*/  retry_count; int /*<<< orphan*/  flow_control; int /*<<< orphan*/  initiator_depth; int /*<<< orphan*/  responder_resources; int /*<<< orphan*/  private_data; } ;
struct ib_cm_req_param {scalar_t__ private_data_len; int srq; int /*<<< orphan*/  max_cm_retries; void* local_cm_response_timeout; void* remote_cm_response_timeout; void* rnr_retry_count; void* retry_count; int /*<<< orphan*/  flow_control; int /*<<< orphan*/  initiator_depth; int /*<<< orphan*/  responder_resources; int /*<<< orphan*/  starting_psn; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  qp_num; int /*<<< orphan*/  service_id; int /*<<< orphan*/ * alternate_path; int /*<<< orphan*/ * primary_path; void* private_data; } ;
struct ib_cm_id {int dummy; } ;

/* Variables and functions */
 void* CMA_CM_RESPONSE_TIMEOUT ; 
 int /*<<< orphan*/  CMA_MAX_CM_RETRIES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct ib_cm_id*) ; 
 int FUNC1 (struct ib_cm_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_id_private*) ; 
 int FUNC3 (void*,struct rdma_id_private*) ; 
 int /*<<< orphan*/  cma_ib_handler ; 
 int FUNC4 (struct rdma_id_private*) ; 
 struct ib_cm_id* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_cm_id*) ; 
 int FUNC7 (struct ib_cm_id*,struct ib_cm_req_param*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_cm_req_param*,int /*<<< orphan*/ ,int) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u8 ; 

__attribute__((used)) static int FUNC14(struct rdma_id_private *id_priv,
			  struct rdma_conn_param *conn_param)
{
	struct ib_cm_req_param req;
	struct rdma_route *route;
	void *private_data;
	struct ib_cm_id	*id;
	int offset, ret;

	FUNC11(&req, 0, sizeof req);
	offset = FUNC4(id_priv);
	req.private_data_len = offset + conn_param->private_data_len;
	if (req.private_data_len < conn_param->private_data_len)
		return -EINVAL;

	if (req.private_data_len) {
		private_data = FUNC9(req.private_data_len, GFP_ATOMIC);
		if (!private_data)
			return -ENOMEM;
	} else {
		private_data = NULL;
	}

	if (conn_param->private_data && conn_param->private_data_len)
		FUNC10(private_data + offset, conn_param->private_data,
		       conn_param->private_data_len);

	id = FUNC5(id_priv->id.device, cma_ib_handler, id_priv);
	if (FUNC0(id)) {
		ret = FUNC1(id);
		goto out;
	}
	id_priv->cm_id.ib = id;

	route = &id_priv->id.route;
	if (private_data) {
		ret = FUNC3(private_data, id_priv);
		if (ret)
			goto out;
		req.private_data = private_data;
	}

	req.primary_path = &route->path_rec[0];
	if (route->num_paths == 2)
		req.alternate_path = &route->path_rec[1];

	req.service_id = FUNC13(&id_priv->id, FUNC2(id_priv));
	req.qp_num = id_priv->qp_num;
	req.qp_type = id_priv->id.qp_type;
	req.starting_psn = id_priv->seq_num;
	req.responder_resources = conn_param->responder_resources;
	req.initiator_depth = conn_param->initiator_depth;
	req.flow_control = conn_param->flow_control;
	req.retry_count = FUNC12(u8, 7, conn_param->retry_count);
	req.rnr_retry_count = FUNC12(u8, 7, conn_param->rnr_retry_count);
	req.remote_cm_response_timeout = CMA_CM_RESPONSE_TIMEOUT;
	req.local_cm_response_timeout = CMA_CM_RESPONSE_TIMEOUT;
	req.max_cm_retries = CMA_MAX_CM_RETRIES;
	req.srq = id_priv->srq ? 1 : 0;

	ret = FUNC7(id_priv->cm_id.ib, &req);
out:
	if (ret && !FUNC0(id)) {
		FUNC6(id);
		id_priv->cm_id.ib = NULL;
	}

	FUNC8(private_data);
	return ret;
}
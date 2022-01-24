#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rdma_conn_param {int responder_resources; int initiator_depth; int retry_count; int rnr_retry_count; int flags; int private_data_len; void* private_data; } ;
struct rdma_cm_id {scalar_t__ context; } ;
struct iser_conn {int dummy; } ;
struct iser_cm_hdr {int responder_resources; int initiator_depth; int retry_count; int rnr_retry_count; int flags; int private_data_len; void* private_data; } ;
typedef  int /*<<< orphan*/  req_hdr ;

/* Variables and functions */
 int ISER_SEND_W_INV_NOT_SUPPORTED ; 
 int ISER_ZBVA_NOT_SUPPORTED ; 
 int FUNC0 (struct rdma_cm_id*) ; 
 int FUNC1 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_conn_param*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct rdma_cm_id*,struct rdma_conn_param*) ; 

__attribute__((used)) static int FUNC5(struct rdma_cm_id *cma_id)
{
	struct rdma_conn_param conn_param;
	int    ret;
	struct iser_cm_hdr req_hdr;

	ret = FUNC1((struct iser_conn *)cma_id->context);
	if (ret)
		goto failure;

	FUNC3(&conn_param, 0, sizeof conn_param);
	conn_param.responder_resources = 4;
	conn_param.initiator_depth     = 1;
	conn_param.retry_count	       = 7;
	conn_param.rnr_retry_count     = 6;

	FUNC3(&req_hdr, 0, sizeof(req_hdr));
	req_hdr.flags = (ISER_ZBVA_NOT_SUPPORTED |
			ISER_SEND_W_INV_NOT_SUPPORTED);
	conn_param.private_data		= (void *)&req_hdr;
	conn_param.private_data_len	= sizeof(struct iser_cm_hdr);

	ret = FUNC4(cma_id, &conn_param);
	if (ret) {
		FUNC2("failure connecting: %d\n", ret);
		goto failure;
	}

	return 0;
failure:
	return FUNC0(cma_id);
}
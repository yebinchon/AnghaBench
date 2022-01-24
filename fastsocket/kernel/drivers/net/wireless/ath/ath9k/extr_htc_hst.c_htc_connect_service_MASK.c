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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct htc_target {int conn_rsp_epid; int /*<<< orphan*/  dev; int /*<<< orphan*/  cmd_wait; int /*<<< orphan*/  endpoint; } ;
struct htc_service_connreq {int /*<<< orphan*/  service_id; int /*<<< orphan*/  con_flags; int /*<<< orphan*/  ep_callbacks; int /*<<< orphan*/  max_send_qdepth; } ;
struct htc_frame_hdr {int dummy; } ;
struct htc_endpoint {int /*<<< orphan*/  ul_pipeid; int /*<<< orphan*/  dl_pipeid; int /*<<< orphan*/  ep_callbacks; int /*<<< orphan*/  max_txqdepth; int /*<<< orphan*/  service_id; } ;
struct htc_conn_svc_msg {int /*<<< orphan*/  ul_pipeid; int /*<<< orphan*/  dl_pipeid; void* con_flags; void* msg_id; void* service_id; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENDPOINT0 ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HTC_MSG_CONNECT_SERVICE_ID ; 
 int /*<<< orphan*/  HZ ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 struct htc_endpoint* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct htc_target*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC11(struct htc_target *target,
		     struct htc_service_connreq *service_connreq,
		     enum htc_endpoint_id *conn_rsp_epid)
{
	struct sk_buff *skb;
	struct htc_endpoint *endpoint;
	struct htc_conn_svc_msg *conn_msg;
	int ret, time_left;

	/* Find an available endpoint */
	endpoint = FUNC3(target->endpoint);
	if (!endpoint) {
		FUNC2(target->dev, "Endpoint is not available for"
			"service %d\n", service_connreq->service_id);
		return -EINVAL;
	}

	endpoint->service_id = service_connreq->service_id;
	endpoint->max_txqdepth = service_connreq->max_send_qdepth;
	endpoint->ul_pipeid = FUNC7(service_connreq->service_id);
	endpoint->dl_pipeid = FUNC6(service_connreq->service_id);
	endpoint->ep_callbacks = service_connreq->ep_callbacks;

	skb = FUNC0(sizeof(struct htc_conn_svc_msg) +
			    sizeof(struct htc_frame_hdr), GFP_ATOMIC);
	if (!skb) {
		FUNC2(target->dev, "Failed to allocate buf to send"
			"service connect req\n");
		return -ENOMEM;
	}

	FUNC9(skb, sizeof(struct htc_frame_hdr));

	conn_msg = (struct htc_conn_svc_msg *)
			FUNC8(skb, sizeof(struct htc_conn_svc_msg));
	conn_msg->service_id = FUNC1(service_connreq->service_id);
	conn_msg->msg_id = FUNC1(HTC_MSG_CONNECT_SERVICE_ID);
	conn_msg->con_flags = FUNC1(service_connreq->con_flags);
	conn_msg->dl_pipeid = endpoint->dl_pipeid;
	conn_msg->ul_pipeid = endpoint->ul_pipeid;

	ret = FUNC4(target, skb, skb->len, 0, ENDPOINT0);
	if (ret)
		goto err;

	time_left = FUNC10(&target->cmd_wait, HZ);
	if (!time_left) {
		FUNC2(target->dev, "Service connection timeout for: %d\n",
			service_connreq->service_id);
		return -ETIMEDOUT;
	}

	*conn_rsp_epid = target->conn_rsp_epid;
	return 0;
err:
	FUNC5(skb);
	return ret;
}
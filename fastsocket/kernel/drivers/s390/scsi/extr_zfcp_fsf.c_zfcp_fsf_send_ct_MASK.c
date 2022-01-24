#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zfcp_wka_port {int /*<<< orphan*/  handle; TYPE_1__* adapter; } ;
struct zfcp_send_ct {int /*<<< orphan*/  resp; int /*<<< orphan*/  req; struct zfcp_wka_port* wka_port; } ;
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; } ;
struct zfcp_fsf_req {struct zfcp_send_ct* data; TYPE_3__* qtcb; int /*<<< orphan*/  handler; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  mempool_t ;
struct TYPE_5__ {int /*<<< orphan*/  port_handle; } ;
struct TYPE_6__ {TYPE_2__ header; } ;
struct TYPE_4__ {struct zfcp_qdio* qdio; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FSF_MAX_SBALS_PER_REQ ; 
 int /*<<< orphan*/  FSF_QTCB_SEND_GENERIC ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_fsf_req*) ; 
 struct zfcp_fsf_req* FUNC5 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC7 (struct zfcp_qdio*) ; 
 int FUNC8 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  zfcp_fsf_send_ct_handler ; 
 int FUNC9 (struct zfcp_fsf_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC10(struct zfcp_send_ct *ct, mempool_t *pool,
		     unsigned int timeout)
{
	struct zfcp_wka_port *wka_port = ct->wka_port;
	struct zfcp_qdio *qdio = wka_port->adapter->qdio;
	struct zfcp_fsf_req *req;
	int ret = -EIO;

	FUNC2(&qdio->req_q_lock);
	if (FUNC7(qdio))
		goto out;

	req = FUNC5(qdio, FSF_QTCB_SEND_GENERIC, pool);

	if (FUNC0(req)) {
		ret = FUNC1(req);
		goto out;
	}

	req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;
	ret = FUNC9(req, ct->req, ct->resp,
				    FSF_MAX_SBALS_PER_REQ, timeout);
	if (ret)
		goto failed_send;

	req->handler = zfcp_fsf_send_ct_handler;
	req->qtcb->header.port_handle = wka_port->handle;
	req->data = ct;

	FUNC4(req);

	ret = FUNC8(req);
	if (ret)
		goto failed_send;

	goto out;

failed_send:
	FUNC6(req);
out:
	FUNC3(&qdio->req_q_lock);
	return ret;
}
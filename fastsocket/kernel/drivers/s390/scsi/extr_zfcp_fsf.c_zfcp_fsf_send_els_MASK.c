#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct zfcp_send_els {int /*<<< orphan*/  d_id; int /*<<< orphan*/  resp; int /*<<< orphan*/  req; TYPE_4__* adapter; } ;
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; } ;
struct zfcp_fsf_req {struct zfcp_send_els* data; int /*<<< orphan*/  handler; TYPE_3__* qtcb; int /*<<< orphan*/  queue_req; int /*<<< orphan*/  status; } ;
struct TYPE_8__ {struct zfcp_qdio* qdio; } ;
struct TYPE_5__ {int /*<<< orphan*/  d_id; } ;
struct TYPE_6__ {TYPE_1__ support; } ;
struct TYPE_7__ {TYPE_2__ bottom; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FSF_QTCB_SEND_ELS ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_CLEANUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_fsf_req*) ; 
 struct zfcp_fsf_req* FUNC6 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC8 (struct zfcp_qdio*) ; 
 int FUNC9 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  zfcp_fsf_send_els_handler ; 
 int FUNC10 (struct zfcp_fsf_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_qdio*,int /*<<< orphan*/ *,int) ; 

int FUNC12(struct zfcp_send_els *els, unsigned int timeout)
{
	struct zfcp_fsf_req *req;
	struct zfcp_qdio *qdio = els->adapter->qdio;
	int ret = -EIO;

	FUNC2(&qdio->req_q_lock);
	if (FUNC8(qdio))
		goto out;

	req = FUNC6(qdio, FSF_QTCB_SEND_ELS, NULL);

	if (FUNC0(req)) {
		ret = FUNC1(req);
		goto out;
	}

	req->status |= ZFCP_STATUS_FSFREQ_CLEANUP;

#if 1 /* FIXME */
	if (!FUNC4(els->adapter))
		FUNC11(qdio, &req->queue_req, 2);
#endif

	ret = FUNC10(req, els->req, els->resp, 2, timeout);

	if (ret)
		goto failed_send;

	req->qtcb->bottom.support.d_id = els->d_id;
	req->handler = zfcp_fsf_send_els_handler;
	req->data = els;

	FUNC5(req);

	ret = FUNC9(req);
	if (ret)
		goto failed_send;

	goto out;

failed_send:
	FUNC7(req);
out:
	FUNC3(&qdio->req_q_lock);
	return ret;
}
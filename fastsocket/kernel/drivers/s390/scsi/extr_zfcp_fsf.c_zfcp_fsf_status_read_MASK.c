#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; struct zfcp_adapter* adapter; } ;
struct TYPE_5__ {int sbale_curr; } ;
struct zfcp_fsf_req {TYPE_2__ queue_req; struct fsf_status_read_buffer* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  status_read_data; int /*<<< orphan*/  status_read_req; } ;
struct zfcp_adapter {int /*<<< orphan*/  dbf; TYPE_1__ pool; } ;
struct qdio_buffer_element {int length; void* addr; int /*<<< orphan*/  eflags; } ;
struct fsf_status_read_buffer {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FSF_QTCB_UNSOLICITED_STATUS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_EFLAGS_LAST_ENTRY ; 
 struct fsf_status_read_buffer* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fsf_status_read_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fsf_status_read_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct zfcp_fsf_req* FUNC8 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC10 (struct zfcp_qdio*) ; 
 int FUNC11 (struct zfcp_fsf_req*) ; 
 struct qdio_buffer_element* FUNC12 (struct zfcp_qdio*,TYPE_2__*) ; 
 struct qdio_buffer_element* FUNC13 (struct zfcp_qdio*,TYPE_2__*) ; 

int FUNC14(struct zfcp_qdio *qdio)
{
	struct zfcp_adapter *adapter = qdio->adapter;
	struct zfcp_fsf_req *req;
	struct fsf_status_read_buffer *sr_buf;
	struct qdio_buffer_element *sbale;
	int retval = -EIO;

	FUNC5(&qdio->req_q_lock);
	if (FUNC10(qdio))
		goto out;

	req = FUNC8(qdio, FSF_QTCB_UNSOLICITED_STATUS,
				  adapter->pool.status_read_req);
	if (FUNC0(req)) {
		retval = FUNC1(req);
		goto out;
	}

	sbale = FUNC13(qdio, &req->queue_req);
	sbale[2].eflags |= SBAL_EFLAGS_LAST_ENTRY;
	req->queue_req.sbale_curr = 2;

	sr_buf = FUNC2(adapter->pool.status_read_data, GFP_ATOMIC);
	if (!sr_buf) {
		retval = -ENOMEM;
		goto failed_buf;
	}
	FUNC4(sr_buf, 0, sizeof(*sr_buf));
	req->data = sr_buf;
	sbale = FUNC12(qdio, &req->queue_req);
	sbale->addr = (void *) sr_buf;
	sbale->length = sizeof(*sr_buf);

	retval = FUNC11(req);
	if (retval)
		goto failed_req_send;

	goto out;

failed_req_send:
	FUNC3(sr_buf, adapter->pool.status_read_data);
failed_buf:
	FUNC9(req);
	FUNC7("fail", adapter->dbf, NULL);
out:
	FUNC6(&qdio->req_q_lock);
	return retval;
}
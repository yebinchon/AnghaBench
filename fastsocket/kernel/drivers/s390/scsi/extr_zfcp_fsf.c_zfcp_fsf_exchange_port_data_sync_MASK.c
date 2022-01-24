#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zfcp_qdio {int /*<<< orphan*/  req_q_lock; TYPE_1__* adapter; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  completion; int /*<<< orphan*/  handler; int /*<<< orphan*/  queue_req; struct fsf_qtcb_bottom_port* data; } ;
struct qdio_buffer_element {int /*<<< orphan*/  eflags; int /*<<< orphan*/  sflags; } ;
struct fsf_qtcb_bottom_port {int dummy; } ;
struct TYPE_2__ {int adapter_features; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
 int FSF_FEATURE_HBAAPI_MANAGEMENT ; 
 int /*<<< orphan*/  FSF_QTCB_EXCHANGE_PORT_DATA ; 
 scalar_t__ FUNC0 (struct zfcp_fsf_req*) ; 
 int FUNC1 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  SBAL_EFLAGS_LAST_ENTRY ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_TYPE_READ ; 
 int /*<<< orphan*/  ZFCP_FSF_REQUEST_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zfcp_fsf_exchange_port_data_handler ; 
 struct zfcp_fsf_req* FUNC5 (struct zfcp_qdio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_fsf_req*) ; 
 scalar_t__ FUNC7 (struct zfcp_qdio*) ; 
 int FUNC8 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_fsf_req*,int /*<<< orphan*/ ) ; 
 struct qdio_buffer_element* FUNC10 (struct zfcp_qdio*,int /*<<< orphan*/ *) ; 

int FUNC11(struct zfcp_qdio *qdio,
				     struct fsf_qtcb_bottom_port *data)
{
	struct qdio_buffer_element *sbale;
	struct zfcp_fsf_req *req = NULL;
	int retval = -EIO;

	if (!(qdio->adapter->adapter_features & FSF_FEATURE_HBAAPI_MANAGEMENT))
		return -EOPNOTSUPP;

	FUNC2(&qdio->req_q_lock);
	if (FUNC7(qdio))
		goto out_unlock;

	req = FUNC5(qdio, FSF_QTCB_EXCHANGE_PORT_DATA, NULL);

	if (FUNC0(req)) {
		retval = FUNC1(req);
		goto out_unlock;
	}

	if (data)
		req->data = data;

	sbale = FUNC10(qdio, &req->queue_req);
	sbale[0].sflags |= SBAL_SFLAGS0_TYPE_READ;
	sbale[1].eflags |= SBAL_EFLAGS_LAST_ENTRY;

	req->handler = zfcp_fsf_exchange_port_data_handler;
	FUNC9(req, ZFCP_FSF_REQUEST_TIMEOUT);
	retval = FUNC8(req);
	FUNC3(&qdio->req_q_lock);

	if (!retval)
		FUNC4(&req->completion);

	FUNC6(req);

	return retval;

out_unlock:
	FUNC3(&qdio->req_q_lock);
	return retval;
}
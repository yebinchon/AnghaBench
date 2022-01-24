#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int (* event_handler ) (TYPE_5__*,struct rdma_cm_event*) ;scalar_t__ qp_type; } ;
struct TYPE_13__ {struct ib_cm_id* ib; } ;
struct rdma_id_private {TYPE_5__ id; int /*<<< orphan*/  handler_mutex; TYPE_4__ cm_id; int /*<<< orphan*/  refcount; } ;
struct TYPE_10__ {scalar_t__ private_data_len; scalar_t__ private_data; } ;
struct TYPE_11__ {TYPE_1__ ud; } ;
struct rdma_cm_event {TYPE_2__ param; int /*<<< orphan*/  event; } ;
struct ib_cm_id {int /*<<< orphan*/  cm_handler; struct rdma_id_private* context; } ;
struct TYPE_12__ {int /*<<< orphan*/  req_rcvd; } ;
struct ib_cm_event {scalar_t__ event; int /*<<< orphan*/  private_data; TYPE_3__ param; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMA_CM_MRA_SETTING ; 
 int ECONNABORTED ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE ; 
 scalar_t__ IB_CM_SIDR_REQ_RECEIVED ; 
 scalar_t__ IB_QPT_UD ; 
 int /*<<< orphan*/  RDMA_CM_CONNECT ; 
 int /*<<< orphan*/  RDMA_CM_DESTROYING ; 
 int /*<<< orphan*/  RDMA_CM_EVENT_CONNECT_REQUEST ; 
 int /*<<< orphan*/  RDMA_CM_LISTEN ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rdma_id_private*,struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,struct ib_cm_event*) ; 
 scalar_t__ FUNC3 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_id_private*) ; 
 scalar_t__ FUNC5 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_id_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cma_ib_handler ; 
 struct rdma_id_private* FUNC7 (TYPE_5__*,struct ib_cm_event*) ; 
 struct rdma_id_private* FUNC8 (TYPE_5__*,struct ib_cm_event*) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_cm_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_cm_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC12 (struct rdma_cm_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*) ; 
 int FUNC17 (TYPE_5__*,struct rdma_cm_event*) ; 

__attribute__((used)) static int FUNC18(struct ib_cm_id *cm_id, struct ib_cm_event *ib_event)
{
	struct rdma_id_private *listen_id, *conn_id;
	struct rdma_cm_event event;
	int offset, ret;

	listen_id = cm_id->context;
	if (!FUNC2(&listen_id->id, ib_event))
		return -EINVAL;

	if (FUNC5(listen_id, RDMA_CM_LISTEN))
		return -ECONNABORTED;

	FUNC12(&event, 0, sizeof event);
	offset = FUNC10(listen_id);
	event.event = RDMA_CM_EVENT_CONNECT_REQUEST;
	if (ib_event->event == IB_CM_SIDR_REQ_RECEIVED) {
		conn_id = FUNC8(&listen_id->id, ib_event);
		event.param.ud.private_data = ib_event->private_data + offset;
		event.param.ud.private_data_len =
				IB_CM_SIDR_REQ_PRIVATE_DATA_SIZE - offset;
	} else {
		conn_id = FUNC7(&listen_id->id, ib_event);
		FUNC9(&event, &ib_event->param.req_rcvd,
				       ib_event->private_data, offset);
	}
	if (!conn_id) {
		ret = -ENOMEM;
		goto err1;
	}

	FUNC14(&conn_id->handler_mutex, SINGLE_DEPTH_NESTING);
	ret = FUNC1(conn_id, listen_id);
	if (ret)
		goto err2;

	conn_id->cm_id.ib = cm_id;
	cm_id->context = conn_id;
	cm_id->cm_handler = cma_ib_handler;

	/*
	 * Protect against the user destroying conn_id from another thread
	 * until we're done accessing it.
	 */
	FUNC0(&conn_id->refcount);
	ret = conn_id->id.event_handler(&conn_id->id, &event);
	if (ret)
		goto err3;

	/*
	 * Acquire mutex to prevent user executing rdma_destroy_id()
	 * while we're accessing the cm_id.
	 */
	FUNC13(&lock);
	if (FUNC3(conn_id, RDMA_CM_CONNECT) && (conn_id->id.qp_type != IB_QPT_UD))
		FUNC11(cm_id, CMA_CM_MRA_SETTING, NULL, 0);
	FUNC15(&lock);
	FUNC15(&conn_id->handler_mutex);
	FUNC15(&listen_id->handler_mutex);
	FUNC4(conn_id);
	return 0;

err3:
	FUNC4(conn_id);
	/* Destroy the CM ID by returning a non-zero value. */
	conn_id->cm_id.ib = NULL;
err2:
	FUNC6(conn_id, RDMA_CM_DESTROYING);
	FUNC15(&conn_id->handler_mutex);
err1:
	FUNC15(&listen_id->handler_mutex);
	if (conn_id)
		FUNC16(&conn_id->id);
	return ret;
}
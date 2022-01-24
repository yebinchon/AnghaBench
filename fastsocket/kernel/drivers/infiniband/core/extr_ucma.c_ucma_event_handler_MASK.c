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
struct TYPE_5__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  ud; } ;
struct TYPE_6__ {scalar_t__ event; TYPE_1__ param; int /*<<< orphan*/  status; } ;
struct ucma_event {int /*<<< orphan*/  list; TYPE_2__ resp; struct rdma_cm_id* cm_id; } ;
struct ucma_context {TYPE_4__* file; int /*<<< orphan*/  uid; int /*<<< orphan*/  backlog; } ;
struct rdma_cm_id {scalar_t__ qp_type; struct ucma_context* context; } ;
struct TYPE_7__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  ud; } ;
struct rdma_cm_event {scalar_t__ event; TYPE_3__ param; int /*<<< orphan*/  status; } ;
struct TYPE_8__ {int /*<<< orphan*/  mut; int /*<<< orphan*/  poll_wait; int /*<<< orphan*/  event_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_QPT_UD ; 
 scalar_t__ RDMA_CM_EVENT_CONNECT_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct ucma_event*) ; 
 struct ucma_event* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ucma_context*,struct rdma_cm_event*,struct ucma_event*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct rdma_cm_id *cm_id,
			      struct rdma_cm_event *event)
{
	struct ucma_event *uevent;
	struct ucma_context *ctx = cm_id->context;
	int ret = 0;

	uevent = FUNC1(sizeof(*uevent), GFP_KERNEL);
	if (!uevent)
		return event->event == RDMA_CM_EVENT_CONNECT_REQUEST;

	FUNC3(&ctx->file->mut);
	uevent->cm_id = cm_id;
	FUNC7(ctx, event, uevent);
	uevent->resp.event = event->event;
	uevent->resp.status = event->status;
	if (cm_id->qp_type == IB_QPT_UD)
		FUNC6(&uevent->resp.param.ud, &event->param.ud);
	else
		FUNC5(&uevent->resp.param.conn,
				     &event->param.conn);

	if (event->event == RDMA_CM_EVENT_CONNECT_REQUEST) {
		if (!ctx->backlog) {
			ret = -ENOMEM;
			FUNC0(uevent);
			goto out;
		}
		ctx->backlog--;
	} else if (!ctx->uid) {
		/*
		 * We ignore events for new connections until userspace has set
		 * their context.  This can only happen if an error occurs on a
		 * new connection before the user accepts it.  This is okay,
		 * since the accept will just fail later.
		 */
		FUNC0(uevent);
		goto out;
	}

	FUNC2(&uevent->list, &ctx->file->event_list);
	FUNC8(&ctx->file->poll_wait);
out:
	FUNC4(&ctx->file->mut);
	return ret;
}
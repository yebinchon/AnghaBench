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
struct rdma_cm_id {scalar_t__ context; } ;
struct iser_conn {scalar_t__ post_recv_buf_count; int /*<<< orphan*/  wait; int /*<<< orphan*/  state; int /*<<< orphan*/  post_send_buf_count; TYPE_1__* iser_conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  iscsi_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_ERR_CONN_FAILED ; 
 int /*<<< orphan*/  ISER_CONN_DOWN ; 
 int /*<<< orphan*/  ISER_CONN_TERMINATING ; 
 int /*<<< orphan*/  ISER_CONN_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iser_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct iser_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct rdma_cm_id *cma_id)
{
	struct iser_conn *ib_conn;
	int ret;

	ib_conn = (struct iser_conn *)cma_id->context;

	/* getting here when the state is UP means that the conn is being *
	 * terminated asynchronously from the iSCSI layer's perspective.  */
	if (FUNC3(ib_conn, ISER_CONN_UP,
				      ISER_CONN_TERMINATING))
		FUNC1(ib_conn->iser_conn->iscsi_conn,
				   ISCSI_ERR_CONN_FAILED);

	/* Complete the termination process if no posts are pending */
	if (ib_conn->post_recv_buf_count == 0 &&
	    (FUNC0(&ib_conn->post_send_buf_count) == 0)) {
		ib_conn->state = ISER_CONN_DOWN;
		FUNC4(&ib_conn->wait);
	}

	ret = FUNC2(ib_conn, 0); /* deref ib conn's cma id */
	return ret;
}
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
struct iscsi_iser_conn {TYPE_1__* ib_conn; } ;
struct iscsi_hdr {int flags; int /*<<< orphan*/  opcode; } ;
struct iscsi_conn {struct iscsi_iser_conn* dd_data; } ;
struct TYPE_2__ {int post_recv_buf_count; int /*<<< orphan*/  post_send_buf_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ISCSI_FULL_FEATURE_PHASE ; 
 int /*<<< orphan*/  ISER_MIN_POSTED_RX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct iscsi_conn *conn, struct iscsi_hdr *req)
{
	struct iscsi_iser_conn *iser_conn = conn->dd_data;

	FUNC2("req op %x flags %x\n", req->opcode, req->flags);
	/* check if this is the last login - going to full feature phase */
	if ((req->flags & ISCSI_FULL_FEATURE_PHASE) != ISCSI_FULL_FEATURE_PHASE)
		return 0;

	/*
	 * Check that there is one posted recv buffer (for the last login
	 * response) and no posted send buffers left - they must have been
	 * consumed during previous login phases.
	 */
	FUNC0(iser_conn->ib_conn->post_recv_buf_count != 1);
	FUNC0(FUNC1(&iser_conn->ib_conn->post_send_buf_count) != 0);

	FUNC2("Initially post: %d\n", ISER_MIN_POSTED_RX);
	/* Initial post receive buffers */
	if (FUNC3(iser_conn->ib_conn, ISER_MIN_POSTED_RX))
		return -ENOMEM;

	return 0;
}
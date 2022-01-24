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
struct bnx2fc_els_cb_arg {struct bnx2fc_cmd* aborted_io_req; struct bnx2fc_cmd* io_req; } ;
struct bnx2fc_cmd {scalar_t__ on_active_queue; int /*<<< orphan*/  link; int /*<<< orphan*/  xid; int /*<<< orphan*/  req_flags; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  BNX2FC_FLAG_ELS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  bnx2fc_cmd_release ; 
 int FUNC2 (struct bnx2fc_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2fc_els_cb_arg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct bnx2fc_els_cb_arg *cb_arg)
{
	struct bnx2fc_cmd *orig_io_req;
	struct bnx2fc_cmd *rrq_req;
	int rc = 0;

	FUNC1(!cb_arg);
	rrq_req = cb_arg->io_req;
	orig_io_req = cb_arg->aborted_io_req;
	FUNC1(!orig_io_req);
	FUNC0("rrq_compl: orig xid = 0x%x, rrq_xid = 0x%x\n",
		   orig_io_req->xid, rrq_req->xid);

	FUNC4(&orig_io_req->refcount, bnx2fc_cmd_release);

	if (FUNC6(BNX2FC_FLAG_ELS_TIMEOUT, &rrq_req->req_flags)) {
		/*
		 * els req is timed out. cleanup the IO with FW and
		 * drop the completion. Remove from active_cmd_queue.
		 */
		FUNC0("rrq xid - 0x%x timed out, clean it up\n",
			   rrq_req->xid);

		if (rrq_req->on_active_queue) {
			FUNC5(&rrq_req->link);
			rrq_req->on_active_queue = 0;
			rc = FUNC2(rrq_req);
			FUNC1(rc);
		}
	}
	FUNC3(cb_arg);
}
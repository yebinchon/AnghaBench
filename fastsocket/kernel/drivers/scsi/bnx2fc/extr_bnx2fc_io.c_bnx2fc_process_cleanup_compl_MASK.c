#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct fcoe_task_ctx_entry {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  counter; } ;
struct TYPE_4__ {TYPE_1__ refcount; } ;
struct bnx2fc_cmd {int /*<<< orphan*/  tm_done; scalar_t__ wait_for_comp; TYPE_2__ refcount; int /*<<< orphan*/  cmd_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2fc_cmd*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  bnx2fc_cmd_release ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2fc_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC4(struct bnx2fc_cmd *io_req,
				  struct fcoe_task_ctx_entry *task,
				  u8 num_rq)
{
	FUNC0(io_req, "Entered process_cleanup_compl "
			      "refcnt = %d, cmd_type = %d\n",
		   io_req->refcount.refcount.counter, io_req->cmd_type);
	FUNC1(io_req, DID_ERROR);
	FUNC3(&io_req->refcount, bnx2fc_cmd_release);
	if (io_req->wait_for_comp)
		FUNC2(&io_req->tm_done);
}
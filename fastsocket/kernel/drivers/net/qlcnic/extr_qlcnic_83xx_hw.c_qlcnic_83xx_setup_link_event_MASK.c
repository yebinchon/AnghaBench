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
typedef  int u32 ;
struct TYPE_6__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_3__ req; } ;
struct qlcnic_adapter {TYPE_1__* pdev; TYPE_2__* recv_ctx; } ;
struct TYPE_5__ {int context_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BIT_8 ; 
 int /*<<< orphan*/  QLCNIC_CMD_GET_LINK_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

int FUNC4(struct qlcnic_adapter *adapter, int enable)
{
	int err;
	u32 temp;
	struct qlcnic_cmd_args cmd;

	FUNC1(&cmd, adapter, QLCNIC_CMD_GET_LINK_EVENT);
	temp = adapter->recv_ctx->context_id << 16;
	cmd.req.arg[1] = (enable ? 1 : 0) | BIT_8 | temp;
	err = FUNC3(adapter, &cmd);
	if (err)
		FUNC0(&adapter->pdev->dev,
			 "Setup linkevent mailbox failed\n");
	FUNC2(&cmd);
	return err;
}
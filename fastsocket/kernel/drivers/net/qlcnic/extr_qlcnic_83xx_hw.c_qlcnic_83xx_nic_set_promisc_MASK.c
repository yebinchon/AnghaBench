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
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; TYPE_3__* recv_ctx; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_CMD_CONFIGURE_MAC_RX_MODE ; 
 scalar_t__ QLCNIC_HOST_CTX_STATE_FREED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_cmd_args*) ; 
 int FUNC4 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

int FUNC5(struct qlcnic_adapter *adapter, u32 mode)
{
	int err;
	u32 temp = 0;
	struct qlcnic_cmd_args cmd;

	if (adapter->recv_ctx->state == QLCNIC_HOST_CTX_STATE_FREED)
		return -EIO;

	FUNC2(&cmd, adapter, QLCNIC_CMD_CONFIGURE_MAC_RX_MODE);
	FUNC1(adapter, &temp);
	cmd.req.arg[1] = (mode ? 1 : 0) | temp;
	err = FUNC4(adapter, &cmd);
	if (err)
		FUNC0(&adapter->pdev->dev,
			 "Promiscous mode config failed\n");

	FUNC3(&cmd);
	return err;
}
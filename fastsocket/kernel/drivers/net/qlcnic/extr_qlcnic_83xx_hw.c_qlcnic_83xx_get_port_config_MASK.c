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
struct TYPE_6__ {int /*<<< orphan*/ * arg; } ;
struct qlcnic_cmd_args {TYPE_3__ rsp; } ;
struct qlcnic_adapter {TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  port_config; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_GET_PORT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

int FUNC4(struct qlcnic_adapter *adapter)
{
	struct qlcnic_cmd_args cmd;
	int err;

	FUNC1(&cmd, adapter, QLCNIC_CMD_GET_PORT_CONFIG);
	err = FUNC3(adapter, &cmd);
	if (err)
		FUNC0(&adapter->pdev->dev, "Get Port config failed\n");
	else
		adapter->ahw->port_config = cmd.rsp.arg[1];
	FUNC2(&cmd);
	return err;
}
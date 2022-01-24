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
struct TYPE_4__ {int /*<<< orphan*/ * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_3__* pdev; TYPE_2__* ahw; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  port_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CMD_SET_PORT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

int FUNC4(struct qlcnic_adapter *adapter)
{
	struct qlcnic_cmd_args cmd;
	int err;

	FUNC1(&cmd, adapter, QLCNIC_CMD_SET_PORT_CONFIG);
	cmd.req.arg[1] = adapter->ahw->port_config;
	err = FUNC3(adapter, &cmd);
	if (err)
		FUNC0(&adapter->pdev->dev, "Set Port Config failed.\n");
	FUNC2(&cmd);
	return err;
}
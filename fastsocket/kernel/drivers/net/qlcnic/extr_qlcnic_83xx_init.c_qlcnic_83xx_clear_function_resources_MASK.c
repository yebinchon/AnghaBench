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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/ * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; int /*<<< orphan*/  ahw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_31 ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLCNIC_CMD_STOP_NIC_FUNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_IDC_DRV_AUDIT ; 
 int /*<<< orphan*/  QLC_83XX_IDC_DRV_PRESENCE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_cmd_args*) ; 
 int FUNC5 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

__attribute__((used)) static void FUNC6(struct qlcnic_adapter *adapter)
{
	struct qlcnic_cmd_args cmd;
	u32 presence_mask, audit_mask;
	int status;

	presence_mask = FUNC1(adapter->ahw, QLC_83XX_IDC_DRV_PRESENCE);
	audit_mask = FUNC1(adapter->ahw, QLC_83XX_IDC_DRV_AUDIT);

	if (FUNC0(adapter, presence_mask, audit_mask)) {
		FUNC3(&cmd, adapter, QLCNIC_CMD_STOP_NIC_FUNC);
		cmd.req.arg[1] = BIT_31;
		status = FUNC5(adapter, &cmd);
		if (status)
			FUNC2(&adapter->pdev->dev,
				"Failed to clean up the function resources\n");
		FUNC4(&cmd);
	}
}
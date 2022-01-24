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
typedef  int u8 ;
typedef  int u16 ;
struct qlcnic_sriov {int vlan; int /*<<< orphan*/  bc; } ;
struct TYPE_5__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; } ;
struct qlcnic_adapter {int /*<<< orphan*/  netdev; TYPE_3__* pdev; TYPE_1__* ahw; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct qlcnic_sriov* sriov; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_BC_CMD_CFG_GUEST_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 int FUNC4 (struct qlcnic_cmd_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct qlcnic_sriov*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct qlcnic_adapter *adapter,
				   u16 vid, u8 enable)
{
	struct qlcnic_sriov *sriov = adapter->ahw->sriov;
	struct qlcnic_cmd_args cmd;
	int ret;

	if (vid == 0)
		return 0;

	ret = FUNC6(sriov, vid, enable);
	if (ret)
		return ret;

	ret = FUNC4(&cmd,
					     QLCNIC_BC_CMD_CFG_GUEST_VLAN);
	if (ret)
		return ret;

	cmd.req.arg[1] = (enable & 1) | vid << 16;

	FUNC5(&sriov->bc);
	ret = FUNC3(adapter, &cmd);
	if (ret) {
		FUNC0(&adapter->pdev->dev,
			"Failed to configure guest VLAN, err=%d\n", ret);
	} else {
		FUNC1(adapter);

		if (enable)
			sriov->vlan = vid;
		else
			sriov->vlan = 0;

		FUNC7(adapter->netdev);
	}

	FUNC2(&cmd);
	return ret;
}
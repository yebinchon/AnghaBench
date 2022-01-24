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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct TYPE_6__ {int* arg; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_3__ rsp; TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  QLCNIC_CMD_CONFIG_VPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int,int) ; 
 scalar_t__ FUNC1 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*) ; 
 int FUNC3 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 
 int FUNC4 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*,int,int) ; 

__attribute__((used)) static int FUNC7(struct qlcnic_adapter *adapter,
					u8 flag, u16 func)
{
	struct qlcnic_cmd_args cmd;
	int ret;
	int vpid;

	if (FUNC1(&cmd, adapter, QLCNIC_CMD_CONFIG_VPORT))
		return -ENOMEM;

	if (flag) {
		cmd.req.arg[3] = func << 8;
	} else {
		vpid = FUNC4(adapter, func);
		if (vpid < 0) {
			ret = -EINVAL;
			goto out;
		}
		cmd.req.arg[3] = ((vpid & 0xffff) << 8) | 1;
	}

	ret = FUNC3(adapter, &cmd);
	if (ret) {
		FUNC0(&adapter->pdev->dev,
			"Failed %s vport, err %d for func 0x%x\n",
			(flag ? "enable" : "disable"), ret, func);
		goto out;
	}

	if (flag) {
		vpid = cmd.rsp.arg[2] & 0xffff;
		FUNC6(adapter, vpid, func);
	} else {
		FUNC5(adapter, func);
	}

out:
	FUNC2(&cmd);
	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  size_t u32 ;
struct TYPE_8__ {size_t* arg; } ;
struct qlcnic_cmd_args {TYPE_4__ req; } ;
struct qlcnic_adapter {TYPE_3__* eswitch; TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {scalar_t__ op_mode; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 size_t BIT_4 ; 
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_CMD_SET_PORTMIRRORING ; 
 scalar_t__ QLCNIC_MGMT_FUNC ; 
 int QLCNIC_RCODE_SUCCESS ; 
 int QLCNIC_SWITCH_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_cmd_args*) ; 
 int FUNC4 (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ; 

int FUNC5(struct qlcnic_adapter *adapter, u8 id,
				 u8 enable_mirroring, u8 pci_func)
{
	struct device *dev = &adapter->pdev->dev;
	struct qlcnic_cmd_args cmd;
	int err = -EIO;
	u32 arg1;

	if (adapter->ahw->op_mode != QLCNIC_MGMT_FUNC ||
	    !(adapter->eswitch[id].flags & QLCNIC_SWITCH_ENABLE))
		return err;

	arg1 = id | (enable_mirroring ? BIT_4 : 0);
	arg1 |= pci_func << 8;

	FUNC2(&cmd, adapter, QLCNIC_CMD_SET_PORTMIRRORING);
	cmd.req.arg[1] = arg1;
	err = FUNC4(adapter, &cmd);

	if (err != QLCNIC_RCODE_SUCCESS)
		FUNC0(dev, "Failed to configure port mirroring for vNIC function %d on eSwitch %d\n",
			pci_func, id);
	else
		FUNC1(dev, "Configured port mirroring for vNIC function %d on eSwitch %d\n",
			 pci_func, id);
	FUNC3(&cmd);

	return err;
}
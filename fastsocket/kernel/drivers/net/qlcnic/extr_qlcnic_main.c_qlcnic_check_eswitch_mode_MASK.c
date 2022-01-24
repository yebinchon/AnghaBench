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
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {int flags; TYPE_2__* ahw; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  fw_hal_version; scalar_t__ op_mode; int /*<<< orphan*/  pci_func; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int QLCNIC_ADAPTER_INITIALIZED ; 
 int /*<<< orphan*/  QLCNIC_DRV_OP_MODE ; 
 int QLCNIC_ESWITCH_ENABLED ; 
 scalar_t__ QLCNIC_MGMT_FUNC ; 
 scalar_t__ QLCNIC_PRIV_FUNC ; 
 scalar_t__ QLC_DEV_DRV_DEFAULT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC6(struct qlcnic_adapter *adapter)
{
	u32 op_mode, priv_level;
	int err = 0;

	err = FUNC4(adapter);
	if (err)
		return err;

	if (adapter->flags & QLCNIC_ADAPTER_INITIALIZED)
		return 0;

	op_mode = FUNC1(adapter, QLCNIC_DRV_OP_MODE);
	priv_level = FUNC0(op_mode, adapter->ahw->pci_func);

	if (op_mode == QLC_DEV_DRV_DEFAULT)
		priv_level = QLCNIC_MGMT_FUNC;
	else
		priv_level = FUNC0(op_mode, adapter->ahw->pci_func);

	if (adapter->flags & QLCNIC_ESWITCH_ENABLED) {
		if (priv_level == QLCNIC_MGMT_FUNC) {
			adapter->ahw->op_mode = QLCNIC_MGMT_FUNC;
			err = FUNC3(adapter);
			if (err)
				return err;
			/* Set privilege level for other functions */
			FUNC5(adapter);
			FUNC2(&adapter->pdev->dev,
				"HAL Version: %d, Management function\n",
				 adapter->ahw->fw_hal_version);
		} else if (priv_level == QLCNIC_PRIV_FUNC) {
			adapter->ahw->op_mode = QLCNIC_PRIV_FUNC;
			FUNC2(&adapter->pdev->dev,
				"HAL Version: %d, Privileged function\n",
				 adapter->ahw->fw_hal_version);
		}
	}

	adapter->flags |= QLCNIC_ADAPTER_INITIALIZED;

	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct qlcnic_hardware_context {int fw_hal_version; scalar_t__ op_mode; int /*<<< orphan*/  pci_func; } ;
struct qlcnic_adapter {int /*<<< orphan*/ * nic_ops; int /*<<< orphan*/  state; TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXT_CAP_ID_SRIOV ; 
 scalar_t__ QLCNIC_MGMT_FUNC ; 
 scalar_t__ QLCNIC_NON_PRIV_FUNC ; 
 scalar_t__ FUNC0 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ QLC_83XX_DEFAULT_OPMODE ; 
 int /*<<< orphan*/  QLC_83XX_DRV_OP_MODE ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __QLCNIC_SRIOV_CAPABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qlcnic_83xx_ops ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  qlcnic_vf_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct qlcnic_adapter *adapter,
			  const struct pci_device_id *ent)
{
	u32 op_mode, priv_level;
	struct qlcnic_hardware_context *ahw = adapter->ahw;

	ahw->fw_hal_version = 2;
	FUNC4(adapter);

	if (FUNC5(adapter)) {
		FUNC6(adapter);
		return;
	}

	/* Determine function privilege level */
	op_mode = FUNC0(adapter->ahw, QLC_83XX_DRV_OP_MODE);
	if (op_mode == QLC_83XX_DEFAULT_OPMODE)
		priv_level = QLCNIC_MGMT_FUNC;
	else
		priv_level = FUNC1(op_mode,
							 ahw->pci_func);

	if (priv_level == QLCNIC_NON_PRIV_FUNC) {
		ahw->op_mode = QLCNIC_NON_PRIV_FUNC;
		FUNC2(&adapter->pdev->dev,
			 "HAL Version: %d Non Privileged function\n",
			 ahw->fw_hal_version);
		adapter->nic_ops = &qlcnic_vf_ops;
	} else {
		if (FUNC3(adapter->pdev,
					    PCI_EXT_CAP_ID_SRIOV))
			FUNC7(__QLCNIC_SRIOV_CAPABLE, &adapter->state);
		adapter->nic_ops = &qlcnic_83xx_ops;
	}
}
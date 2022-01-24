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
struct TYPE_3__ {int /*<<< orphan*/  delay; int /*<<< orphan*/  status; } ;
struct qlcnic_hardware_context {int msix_supported; scalar_t__ reset_context; TYPE_1__ idc; int /*<<< orphan*/  mbx_lock; } ;
struct qlcnic_adapter {int /*<<< orphan*/  state; int /*<<< orphan*/  idc_aen_work; TYPE_2__* pdev; int /*<<< orphan*/  flags; scalar_t__ need_fw_reset; scalar_t__ fw_fail_cnt; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLCNIC_TX_INTR_SHARED ; 
 int /*<<< orphan*/  QLC_83XX_IDC_FW_POLL_DELAY ; 
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 int /*<<< orphan*/  QLC_83XX_MODULE_LOADED ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  qlcnic_83xx_idc_aen_work ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 
 int FUNC5 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct qlcnic_adapter *adapter, int pci_using_dac)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int err;

	FUNC7(&ahw->mbx_lock);
	FUNC6(QLC_83XX_MBX_READY, &ahw->idc.status);
	FUNC6(QLC_83XX_MODULE_LOADED, &ahw->idc.status);
	ahw->idc.delay = QLC_83XX_IDC_FW_POLL_DELAY;
	ahw->reset_context = 0;
	adapter->fw_fail_cnt = 0;
	ahw->msix_supported = 1;
	adapter->need_fw_reset = 0;
	adapter->flags |= QLCNIC_TX_INTR_SHARED;

	err = FUNC4(adapter);
	if (err)
		return err;

	err = FUNC5(adapter, pci_using_dac);
	if (err)
		return err;

	if (FUNC3(adapter))
		FUNC2(&adapter->pdev->dev, "failed to read mac addr\n");

	FUNC0(&adapter->idc_aen_work, qlcnic_83xx_idc_aen_work);

	FUNC1(__QLCNIC_RESETTING, &adapter->state);
	return 0;
}
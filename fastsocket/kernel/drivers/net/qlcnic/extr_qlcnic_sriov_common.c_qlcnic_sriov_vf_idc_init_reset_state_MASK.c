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
typedef  int /*<<< orphan*/  u8 ;
struct qlcnic_adapter {scalar_t__ reset_ctx_cnt; scalar_t__ tx_timeo_cnt; int /*<<< orphan*/  state; TYPE_1__* pdev; TYPE_2__* ahw; } ;
struct qlc_83xx_idc {scalar_t__ prev_state; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {int /*<<< orphan*/  pci_func; struct qlc_83xx_idc idc; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ QLC_83XX_IDC_DEV_READY ; 
 int /*<<< orphan*/  QLC_83XX_MBX_READY ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter)
{
	struct qlc_83xx_idc *idc = &adapter->ahw->idc;
	u8 func = adapter->ahw->pci_func;

	if (idc->prev_state == QLC_83XX_IDC_DEV_READY) {
		FUNC1(&adapter->pdev->dev,
			"Firmware hang detected by VF 0x%x\n", func);
		FUNC3(__QLCNIC_RESETTING, &adapter->state);
		adapter->tx_timeo_cnt = 0;
		adapter->reset_ctx_cnt = 0;
		FUNC0(QLC_83XX_MBX_READY, &idc->status);
		FUNC2(adapter);
	}
	return 0;
}
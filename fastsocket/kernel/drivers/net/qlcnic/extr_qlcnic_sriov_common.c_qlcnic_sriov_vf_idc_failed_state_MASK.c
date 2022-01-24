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
struct qlcnic_adapter {int /*<<< orphan*/  state; TYPE_2__* pdev; TYPE_1__* ahw; } ;
struct qlc_83xx_idc {scalar_t__ prev_state; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct qlc_83xx_idc idc; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ QLC_83XX_IDC_DEV_READY ; 
 int /*<<< orphan*/  QLC_83XX_MODULE_LOADED ; 
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC3(struct qlcnic_adapter *adapter)
{
	struct qlc_83xx_idc *idc = &adapter->ahw->idc;

	FUNC1(&adapter->pdev->dev, "Device is in failed state\n");
	if (idc->prev_state == QLC_83XX_IDC_DEV_READY)
		FUNC2(adapter);

	FUNC0(QLC_83XX_MODULE_LOADED, &idc->status);
	FUNC0(__QLCNIC_RESETTING, &adapter->state);
	return -EIO;
}
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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct qlcnic_hardware_context {TYPE_2__ idc; int /*<<< orphan*/  port_config; } ;
struct qlcnic_adapter {int flags; int /*<<< orphan*/  mac_addr; TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ QLCNIC_ELB_MODE ; 
 int /*<<< orphan*/  QLCNIC_ILB_MAX_RCV_LOOP ; 
 scalar_t__ QLCNIC_ILB_MODE ; 
 int /*<<< orphan*/  QLCNIC_MAC_DEL ; 
 int QLCNIC_MSIX_ENABLED ; 
 int /*<<< orphan*/  QLC_83XX_CFG_LOOPBACK_EXT ; 
 int /*<<< orphan*/  QLC_83XX_CFG_LOOPBACK_HSS ; 
 int /*<<< orphan*/  QLC_83XX_IDC_COMP_AEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int FUNC4 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct qlcnic_adapter *adapter, u8 mode)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;
	int status = 0, loop = 0;
	u32 config = ahw->port_config;

	FUNC6(QLC_83XX_IDC_COMP_AEN, &ahw->idc.status);
	if (mode == QLCNIC_ILB_MODE)
		ahw->port_config &= ~QLC_83XX_CFG_LOOPBACK_HSS;
	if (mode == QLCNIC_ELB_MODE)
		ahw->port_config &= ~QLC_83XX_CFG_LOOPBACK_EXT;

	status = FUNC4(adapter);
	if (status) {
		FUNC1(&adapter->pdev->dev,
			"Failed to Clear Loopback Mode = 0x%x.\n",
			ahw->port_config);
		ahw->port_config = config;
		FUNC0(QLC_83XX_IDC_COMP_AEN, &ahw->idc.status);
		return status;
	}

	/* Wait for Link and IDC Completion AEN */
	do {
		FUNC2(300);
		if (!(adapter->flags & QLCNIC_MSIX_ENABLED))
			FUNC3(adapter);

		if (loop++ > QLCNIC_ILB_MAX_RCV_LOOP) {
			FUNC1(&adapter->pdev->dev,
				"Firmware didn't sent IDC completion AEN\n");
			FUNC0(QLC_83XX_IDC_COMP_AEN, &ahw->idc.status);
			return -EIO;
		}
	} while (FUNC7(QLC_83XX_IDC_COMP_AEN, &ahw->idc.status));

	FUNC5(adapter, adapter->mac_addr, 0,
				  QLCNIC_MAC_DEL);
	return status;
}
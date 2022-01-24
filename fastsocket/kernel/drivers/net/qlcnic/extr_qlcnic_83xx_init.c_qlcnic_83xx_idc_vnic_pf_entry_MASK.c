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
struct TYPE_3__ {scalar_t__ vnic_state; scalar_t__ prev_state; int /*<<< orphan*/  vnic_wait_limit; } ;
struct qlcnic_hardware_context {TYPE_1__ idc; } ;
struct qlcnic_adapter {TYPE_2__* pdev; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ QLCNIC_DEV_NPAR_OPER ; 
 scalar_t__ FUNC0 (struct qlcnic_hardware_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ QLC_83XX_IDC_DEV_UNKNOWN ; 
 int /*<<< orphan*/  QLC_83XX_VNIC_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 

int FUNC5(struct qlcnic_adapter *adapter)
{
	u32 state;
	struct qlcnic_hardware_context *ahw = adapter->ahw;

	/* Privileged function waits till mgmt function enables VNIC mode */
	state = FUNC0(adapter->ahw, QLC_83XX_VNIC_STATE);
	if (state != QLCNIC_DEV_NPAR_OPER) {
		if (!ahw->idc.vnic_wait_limit--) {
			FUNC2(adapter, 1);
			return -EIO;
		}
		FUNC1(&adapter->pdev->dev, "vNIC mode disabled\n");
		return -EIO;

	} else {
		/* Perform one time initialization from ready state */
		if (ahw->idc.vnic_state != QLCNIC_DEV_NPAR_OPER) {
			FUNC4(adapter);

			/* If the previous state is UNKNOWN, device will be
			   already attached properly by Init routine*/
			if (ahw->idc.prev_state != QLC_83XX_IDC_DEV_UNKNOWN) {
				if (FUNC3(adapter))
					return -EIO;
			}
			adapter->ahw->idc.vnic_state =  QLCNIC_DEV_NPAR_OPER;
			FUNC1(&adapter->pdev->dev, "vNIC mode enabled\n");
		}
	}

	return 0;
}
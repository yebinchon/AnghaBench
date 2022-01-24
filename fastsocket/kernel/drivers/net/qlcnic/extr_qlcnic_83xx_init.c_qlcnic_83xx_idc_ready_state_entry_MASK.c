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
struct TYPE_2__ {scalar_t__ prev_state; } ;
struct qlcnic_hardware_context {TYPE_1__ idc; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ QLC_83XX_IDC_DEV_INIT ; 
 scalar_t__ QLC_83XX_IDC_DEV_NEED_RESET ; 
 scalar_t__ QLC_83XX_IDC_DEV_READY ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*) ; 

int FUNC2(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;

	if (ahw->idc.prev_state != QLC_83XX_IDC_DEV_READY) {
		FUNC1(adapter);
		/* Re-attach the device if required */
		if ((ahw->idc.prev_state == QLC_83XX_IDC_DEV_NEED_RESET) ||
		    (ahw->idc.prev_state == QLC_83XX_IDC_DEV_INIT)) {
			if (FUNC0(adapter))
				return -EIO;
		}
	}

	return 0;
}
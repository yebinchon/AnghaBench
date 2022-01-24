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
typedef  int u32 ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ QLCNIC_FWERROR_FAN_FAILURE ; 
 int /*<<< orphan*/  QLCNIC_PEG_HALT_STATUS1 ; 
 int QLCNIC_RCODE_FATAL_ERROR ; 
 int FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC3(struct qlcnic_adapter *adapter)
{
	u32 status;

	status = FUNC1(adapter, QLCNIC_PEG_HALT_STATUS1);

	if (status & QLCNIC_RCODE_FATAL_ERROR) {
		FUNC2(&adapter->pdev->dev,
			"peg halt status1=0x%x\n", status);
		if (FUNC0(status) == QLCNIC_FWERROR_FAN_FAILURE) {
			FUNC2(&adapter->pdev->dev,
				"On board active cooling fan failed. "
				"Device has been halted.\n");
			FUNC2(&adapter->pdev->dev,
				"Replace the adapter.\n");
			return -EIO;
		}
	}

	return 0;
}
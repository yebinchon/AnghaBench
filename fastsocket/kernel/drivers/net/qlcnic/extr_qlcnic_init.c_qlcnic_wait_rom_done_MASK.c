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
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 long QLCNIC_MAX_ROM_WAIT_USEC ; 
 int /*<<< orphan*/  QLCNIC_ROMUSB_GLB_STATUS ; 
 long FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter)
{
	long timeout = 0;
	long done = 0;

	FUNC1();
	while (done == 0) {
		done = FUNC0(adapter, QLCNIC_ROMUSB_GLB_STATUS);
		done &= 2;
		if (++timeout >= QLCNIC_MAX_ROM_WAIT_USEC) {
			FUNC2(&adapter->pdev->dev,
				"Timeout reached  waiting for rom done");
			return -EIO;
		}
		FUNC3(1);
	}
	return 0;
}
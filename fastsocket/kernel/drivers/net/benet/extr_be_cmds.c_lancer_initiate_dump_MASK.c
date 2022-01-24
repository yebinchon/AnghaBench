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
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PHYSDEV_CONTROL_DD_MASK ; 
 int PHYSDEV_CONTROL_FW_RESET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int FUNC2 (struct be_adapter*,int) ; 
 int FUNC3 (struct be_adapter*) ; 

int FUNC4(struct be_adapter *adapter)
{
	int status;

	/* give firmware reset and diagnostic dump */
	status = FUNC2(adapter, PHYSDEV_CONTROL_FW_RESET_MASK |
				     PHYSDEV_CONTROL_DD_MASK);
	if (status < 0) {
		FUNC0(&adapter->pdev->dev, "Firmware reset failed\n");
		return status;
	}

	status = FUNC3(adapter);
	if (status)
		return status;

	if (!FUNC1(adapter)) {
		FUNC0(&adapter->pdev->dev, "Dump image not present\n");
		return -1;
	}

	return 0;
}
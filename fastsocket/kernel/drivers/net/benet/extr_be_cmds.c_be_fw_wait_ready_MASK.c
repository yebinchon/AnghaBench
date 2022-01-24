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
typedef  scalar_t__ u16 ;
struct device {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ POST_STAGE_ARMFW_RDY ; 
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 int FUNC4 (struct be_adapter*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct be_adapter *adapter)
{
	u16 stage;
	int status, timeout = 0;
	struct device *dev = &adapter->pdev->dev;

	if (FUNC3(adapter)) {
		status = FUNC4(adapter);
		return status;
	}

	do {
		stage = FUNC0(adapter);
		if (stage == POST_STAGE_ARMFW_RDY)
			return 0;

		FUNC2(dev, "Waiting for POST, %ds elapsed\n",
			 timeout);
		if (FUNC5(2000)) {
			FUNC1(dev, "Waiting for POST aborted\n");
			return -EINTR;
		}
		timeout += 2;
	} while (timeout < 60);

	FUNC1(dev, "POST timeout; stage=0x%x\n", stage);
	return -1;
}
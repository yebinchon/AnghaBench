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
struct be_queue_info {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct be_adapter*,struct be_queue_info*,struct be_queue_info*) ; 
 int FUNC1 (struct be_adapter*,struct be_queue_info*,struct be_queue_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*) ; 

int FUNC4(struct be_adapter *adapter,
			struct be_queue_info *mccq,
			struct be_queue_info *cq)
{
	int status;

	status = FUNC0(adapter, mccq, cq);
	if (status && !FUNC3(adapter)) {
		FUNC2(&adapter->pdev->dev, "Upgrade to F/W ver 2.102.235.0 "
			"or newer to avoid conflicting priorities between NIC "
			"and FCoE traffic");
		status = FUNC1(adapter, mccq, cq);
	}
	return status;
}
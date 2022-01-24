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
struct zfcp_adapter {struct task_struct* erp_thread; TYPE_1__* ccw_device; } ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC4 (int /*<<< orphan*/ ,struct zfcp_adapter*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfcp_erp_thread ; 

int FUNC5(struct zfcp_adapter *adapter)
{
	struct task_struct *thread;

	thread = FUNC4(zfcp_erp_thread, adapter, "zfcperp%s",
			     FUNC3(&adapter->ccw_device->dev));
	if (FUNC0(thread)) {
		FUNC2(&adapter->ccw_device->dev,
			"Creating an ERP thread for the FCP device failed.\n");
		return FUNC1(thread);
	}

	adapter->erp_thread = thread;
	return 0;
}
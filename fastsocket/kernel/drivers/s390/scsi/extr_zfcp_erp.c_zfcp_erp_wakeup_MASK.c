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
struct zfcp_adapter {int /*<<< orphan*/  erp_lock; int /*<<< orphan*/  erp_done_wqh; int /*<<< orphan*/  status; int /*<<< orphan*/  erp_running_head; int /*<<< orphan*/  erp_ready_head; } ;
struct TYPE_2__ {int /*<<< orphan*/  config_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_STATUS_ADAPTER_ERP_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__ zfcp_data ; 

__attribute__((used)) static void FUNC7(struct zfcp_adapter *adapter)
{
	unsigned long flags;

	FUNC3(&zfcp_data.config_lock, flags);
	FUNC2(&adapter->erp_lock);
	if (FUNC1(&adapter->erp_ready_head) &&
	    FUNC1(&adapter->erp_running_head)) {
			FUNC0(ZFCP_STATUS_ADAPTER_ERP_PENDING,
					  &adapter->status);
			FUNC6(&adapter->erp_done_wqh);
	}
	FUNC4(&adapter->erp_lock);
	FUNC5(&zfcp_data.config_lock, flags);
}
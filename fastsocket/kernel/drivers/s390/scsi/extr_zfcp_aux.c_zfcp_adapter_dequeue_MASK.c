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
struct zfcp_adapter {struct zfcp_adapter* stats_reset_data; struct zfcp_adapter* fc_stats; struct zfcp_adapter* req_list; int /*<<< orphan*/  qdio; int /*<<< orphan*/  dbf; int /*<<< orphan*/  req_list_lock; TYPE_2__* ccw_device; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  zfcp_sysfs_adapter_attrs ; 

void FUNC9(struct zfcp_adapter *adapter)
{
	int retval = 0;
	unsigned long flags;

	FUNC3(&adapter->ccw_device->dev.kobj,
			   &zfcp_sysfs_adapter_attrs);
	/* sanity check: no pending FSF requests */
	FUNC1(&adapter->req_list_lock, flags);
	retval = FUNC8(adapter);
	FUNC2(&adapter->req_list_lock, flags);
	if (!retval)
		return;

	FUNC5(adapter);
	FUNC4(adapter->dbf);
	FUNC6(adapter);
	FUNC7(adapter->qdio);
	FUNC0(adapter->req_list);
	FUNC0(adapter->fc_stats);
	FUNC0(adapter->stats_reset_data);
	FUNC0(adapter);
}
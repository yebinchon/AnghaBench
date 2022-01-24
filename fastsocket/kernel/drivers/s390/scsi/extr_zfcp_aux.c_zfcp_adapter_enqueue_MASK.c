#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  seq_print; } ;
struct TYPE_4__ {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  work; int /*<<< orphan*/  list; } ;
struct zfcp_adapter {int /*<<< orphan*/  qdio; struct zfcp_adapter* req_list; int /*<<< orphan*/  dbf; int /*<<< orphan*/  status; TYPE_2__ service_level; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  stat_work; int /*<<< orphan*/  abort_lock; int /*<<< orphan*/  erp_lock; int /*<<< orphan*/  req_list_lock; TYPE_1__ events; int /*<<< orphan*/  erp_running_head; int /*<<< orphan*/  erp_ready_head; int /*<<< orphan*/  port_list_head; int /*<<< orphan*/  erp_done_wqh; int /*<<< orphan*/  erp_ready_wq; int /*<<< orphan*/  remove_wq; int /*<<< orphan*/  refcount; struct ccw_device* ccw_device; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct ccw_device {TYPE_3__ dev; int /*<<< orphan*/ * handler; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_REMOVE ; 
 int /*<<< orphan*/  _zfcp_status_read_scheduler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_adapter*) ; 
 struct zfcp_adapter* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC13 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC14 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC18 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC19 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC20 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  zfcp_fc_post_event ; 
 int /*<<< orphan*/  zfcp_fc_scan_ports ; 
 int /*<<< orphan*/  FUNC21 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  zfcp_print_sl ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC24 (struct zfcp_adapter*) ; 
 scalar_t__ FUNC25 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  zfcp_sysfs_adapter_attrs ; 

int FUNC26(struct ccw_device *ccw_device)
{
	struct zfcp_adapter *adapter;

	/*
	 * Note: It is safe to release the list_lock, as any list changes
	 * are protected by the config_mutex, which must be held to get here
	 */

	adapter = FUNC8(sizeof(struct zfcp_adapter), GFP_KERNEL);
	if (!adapter)
		return -ENOMEM;

	ccw_device->handler = NULL;
	adapter->ccw_device = ccw_device;
	FUNC3(&adapter->refcount, 0);

	if (FUNC23(adapter))
		goto qdio_failed;

	if (FUNC13(adapter))
		goto low_mem_buffers_failed;

	if (FUNC24(adapter))
		goto low_mem_buffers_failed;

	if (FUNC14(adapter))
		goto debug_register_failed;

	if (FUNC25(adapter))
		goto work_queue_failed;

	if (FUNC20(adapter))
		goto generic_services_failed;

	FUNC6(&adapter->remove_wq);
	FUNC6(&adapter->erp_ready_wq);
	FUNC6(&adapter->erp_done_wqh);

	FUNC0(&adapter->port_list_head);
	FUNC0(&adapter->erp_ready_head);
	FUNC0(&adapter->erp_running_head);
	FUNC0(&adapter->events.list);

	FUNC1(&adapter->events.work, zfcp_fc_post_event);
	FUNC10(&adapter->events.list_lock);

	FUNC10(&adapter->req_list_lock);

	FUNC9(&adapter->erp_lock);
	FUNC9(&adapter->abort_lock);

	if (FUNC18(adapter))
		goto erp_thread_failed;

	FUNC1(&adapter->stat_work, _zfcp_status_read_scheduler);
	FUNC1(&adapter->scan_work, zfcp_fc_scan_ports);

	adapter->service_level.seq_print = zfcp_print_sl;

	/* mark adapter unusable as long as sysfs registration is not complete */
	FUNC4(ZFCP_STATUS_COMMON_REMOVE, &adapter->status);

	FUNC5(&ccw_device->dev, adapter);

	if (FUNC11(&ccw_device->dev.kobj,
			       &zfcp_sysfs_adapter_attrs))
		goto sysfs_failed;

	FUNC2(ZFCP_STATUS_COMMON_REMOVE, &adapter->status);

	if (!FUNC12(adapter))
		return 0;

sysfs_failed:
	FUNC17(adapter);
erp_thread_failed:
	FUNC19(adapter);
generic_services_failed:
	FUNC16(adapter);
work_queue_failed:
	FUNC15(adapter->dbf);
debug_register_failed:
	FUNC5(&ccw_device->dev, NULL);
	FUNC7(adapter->req_list);
low_mem_buffers_failed:
	FUNC21(adapter);
qdio_failed:
	FUNC22(adapter->qdio);
	FUNC7(adapter);
	return -ENOMEM;
}
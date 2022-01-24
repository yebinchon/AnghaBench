#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct fw_event_work {TYPE_1__* event_data; } ;
struct _raid_device {int /*<<< orphan*/  percent_complete; } ;
struct MPT2SAS_ADAPTER {int logging_level; int /*<<< orphan*/  raid_device_lock; int /*<<< orphan*/  hide_ir_msg; } ;
struct TYPE_3__ {scalar_t__ RAIDOperation; int /*<<< orphan*/  PercentComplete; int /*<<< orphan*/  VolDevHandle; } ;
typedef  TYPE_1__ Mpi2EventDataIrOperationStatus_t ;

/* Variables and functions */
 scalar_t__ MPI2_EVENT_IR_RAIDOP_RESYNC ; 
 int MPT_DEBUG_EVENT_WORK_TASK ; 
 struct _raid_device* FUNC0 (struct MPT2SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT2SAS_ADAPTER*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct MPT2SAS_ADAPTER *ioc,
    struct fw_event_work *fw_event)
{
	Mpi2EventDataIrOperationStatus_t *event_data = fw_event->event_data;
	static struct _raid_device *raid_device;
	unsigned long flags;
	u16 handle;

#ifdef CONFIG_SCSI_MPT2SAS_LOGGING
	if ((ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK)
	    && !ioc->hide_ir_msg)
		_scsih_sas_ir_operation_status_event_debug(ioc,
		     event_data);
#endif

	/* code added for raid transport support */
	if (event_data->RAIDOperation == MPI2_EVENT_IR_RAIDOP_RESYNC) {

		FUNC3(&ioc->raid_device_lock, flags);
		handle = FUNC2(event_data->VolDevHandle);
		raid_device = FUNC0(ioc, handle);
		if (raid_device)
			raid_device->percent_complete =
			    event_data->PercentComplete;
		FUNC4(&ioc->raid_device_lock, flags);
	}
}
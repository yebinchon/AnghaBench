#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct fw_event_work {TYPE_2__* event_data; } ;
struct MPT3SAS_ADAPTER {int logging_level; scalar_t__ shost_recovery; } ;
struct TYPE_10__ {int NumElements; int /*<<< orphan*/ * ConfigElement; int /*<<< orphan*/  Flags; } ;
struct TYPE_9__ {int ReasonCode; int /*<<< orphan*/  VolDevHandle; int /*<<< orphan*/  PhysDiskNum; int /*<<< orphan*/  PhysDiskDevHandle; } ;
typedef  TYPE_1__ Mpi2EventIrConfigElement_t ;
typedef  TYPE_2__ Mpi2EventDataIrConfigChangeList_t ;

/* Variables and functions */
 int MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG ; 
#define  MPI2_EVENT_IR_CHANGE_RC_ADDED 135 
#define  MPI2_EVENT_IR_CHANGE_RC_HIDE 134 
#define  MPI2_EVENT_IR_CHANGE_RC_PD_CREATED 133 
#define  MPI2_EVENT_IR_CHANGE_RC_PD_DELETED 132 
#define  MPI2_EVENT_IR_CHANGE_RC_REMOVED 131 
#define  MPI2_EVENT_IR_CHANGE_RC_UNHIDE 130 
#define  MPI2_EVENT_IR_CHANGE_RC_VOLUME_CREATED 129 
#define  MPI2_EVENT_IR_CHANGE_RC_VOLUME_DELETED 128 
 int MPT_DEBUG_EVENT_WORK_TASK ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT3SAS_ADAPTER*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct MPT3SAS_ADAPTER*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct MPT3SAS_ADAPTER*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct MPT3SAS_ADAPTER *ioc,
	struct fw_event_work *fw_event)
{
	Mpi2EventIrConfigElement_t *element;
	int i;
	u8 foreign_config;
	Mpi2EventDataIrConfigChangeList_t *event_data = fw_event->event_data;

#ifdef CONFIG_SCSI_MPT3SAS_LOGGING
	if (ioc->logging_level & MPT_DEBUG_EVENT_WORK_TASK)
		_scsih_sas_ir_config_change_event_debug(ioc, event_data);

#endif

	foreign_config = (FUNC9(event_data->Flags) &
	    MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG) ? 1 : 0;

	element = (Mpi2EventIrConfigElement_t *)&event_data->ConfigElement[0];
	if (ioc->shost_recovery) {

		for (i = 0; i < event_data->NumElements; i++, element++) {
			if (element->ReasonCode == MPI2_EVENT_IR_CHANGE_RC_HIDE)
				FUNC0(ioc,
					FUNC8(element->PhysDiskDevHandle),
					element->PhysDiskNum);
		}
		return;
	}
	for (i = 0; i < event_data->NumElements; i++, element++) {

		switch (element->ReasonCode) {
		case MPI2_EVENT_IR_CHANGE_RC_VOLUME_CREATED:
		case MPI2_EVENT_IR_CHANGE_RC_ADDED:
			if (!foreign_config)
				FUNC6(ioc, element);
			break;
		case MPI2_EVENT_IR_CHANGE_RC_VOLUME_DELETED:
		case MPI2_EVENT_IR_CHANGE_RC_REMOVED:
			if (!foreign_config)
				FUNC7(ioc,
				    FUNC8(element->VolDevHandle));
			break;
		case MPI2_EVENT_IR_CHANGE_RC_PD_CREATED:
			FUNC5(ioc, element);
			break;
		case MPI2_EVENT_IR_CHANGE_RC_PD_DELETED:
			FUNC4(ioc, element);
			break;
		case MPI2_EVENT_IR_CHANGE_RC_HIDE:
			FUNC2(ioc, element);
			break;
		case MPI2_EVENT_IR_CHANGE_RC_UNHIDE:
			FUNC3(ioc, element);
			break;
		}
	}
}
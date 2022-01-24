#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fw_event_work {void* event_data; struct MPT3SAS_ADAPTER* ioc; int /*<<< orphan*/  event; } ;
struct SL_WH_TRIGGERS_EVENT_DATA_T {int dummy; } ;
struct MPT3SAS_ADAPTER {scalar_t__ is_driver_loading; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MPT3SAS_PROCESS_TRIGGER_DIAG ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct fw_event_work*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct SL_WH_TRIGGERS_EVENT_DATA_T*,int) ; 

void
FUNC3(struct MPT3SAS_ADAPTER *ioc,
	struct SL_WH_TRIGGERS_EVENT_DATA_T *event_data)
{
	struct fw_event_work *fw_event;

	if (ioc->is_driver_loading)
		return;
	fw_event = FUNC1(sizeof(struct fw_event_work), GFP_ATOMIC);
	if (!fw_event)
		return;
	fw_event->event_data = FUNC1(sizeof(*event_data), GFP_ATOMIC);
	if (!fw_event->event_data)
		return;
	fw_event->event = MPT3SAS_PROCESS_TRIGGER_DIAG;
	fw_event->ioc = ioc;
	FUNC2(fw_event->event_data, event_data, sizeof(*event_data));
	FUNC0(ioc, fw_event);
}
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
struct scsi_event {int /*<<< orphan*/  node; int /*<<< orphan*/  evt_type; } ;
struct scsi_device {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  event_work; int /*<<< orphan*/  event_list; int /*<<< orphan*/  supported_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct scsi_device *sdev, struct scsi_event *evt)
{
	unsigned long flags;

#if 0
	/* FIXME: currently this check eliminates all media change events
	 * for polled devices.  Need to update to discriminate between AN
	 * and polled events */
	if (!test_bit(evt->evt_type, sdev->supported_events)) {
		kfree(evt);
		return;
	}
#endif

	FUNC3(&sdev->list_lock, flags);
	FUNC1(&evt->node, &sdev->event_list);
	FUNC2(&sdev->event_work);
	FUNC4(&sdev->list_lock, flags);
}
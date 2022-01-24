#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* free_queue; int error_sequence_id; int /*<<< orphan*/  ioctl_wqueue; int /*<<< orphan*/  ioctl_lock; int /*<<< orphan*/  chrdev_request_id; void* free_tail; void* free_head; void* pending_tail; void* pending_head; int /*<<< orphan*/ * state; int /*<<< orphan*/ ** event_queue; int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  TW_Event ;
typedef  TYPE_1__ TW_Device_Extension ;
typedef  int /*<<< orphan*/  TW_Command_Full ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TW_DRIVER ; 
 int /*<<< orphan*/  TW_IOCTL_CHRDEV_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int TW_Q_LENGTH ; 
 void* TW_Q_START ; 
 int TW_SECTOR_SIZE ; 
 int /*<<< orphan*/  TW_S_INITIAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC5(TW_Device_Extension *tw_dev)
{
	int i, retval = 1;

	/* Initialize command packet buffers */
	if (FUNC4(tw_dev, sizeof(TW_Command_Full), 0)) {
		FUNC0(tw_dev->host, TW_DRIVER, 0x16, "Command packet memory allocation failed");
		goto out;
	}

	/* Initialize generic buffer */
	if (FUNC4(tw_dev, TW_SECTOR_SIZE, 1)) {
		FUNC0(tw_dev->host, TW_DRIVER, 0x17, "Generic memory allocation failed");
		goto out;
	}

	/* Allocate event info space */
	tw_dev->event_queue[0] = FUNC2(TW_Q_LENGTH, sizeof(TW_Event), GFP_KERNEL);
	if (!tw_dev->event_queue[0]) {
		FUNC0(tw_dev->host, TW_DRIVER, 0x18, "Event info memory allocation failed");
		goto out;
	}


	for (i = 0; i < TW_Q_LENGTH; i++) {
		tw_dev->event_queue[i] = (TW_Event *)((unsigned char *)tw_dev->event_queue[0] + (i * sizeof(TW_Event)));
		tw_dev->free_queue[i] = i;
		tw_dev->state[i] = TW_S_INITIAL;
	}

	tw_dev->pending_head = TW_Q_START;
	tw_dev->pending_tail = TW_Q_START;
	tw_dev->free_head = TW_Q_START;
	tw_dev->free_tail = TW_Q_START;
	tw_dev->error_sequence_id = 1;
	tw_dev->chrdev_request_id = TW_IOCTL_CHRDEV_FREE;

	FUNC3(&tw_dev->ioctl_lock);
	FUNC1(&tw_dev->ioctl_wqueue);

	retval = 0;
out:
	return retval;
}
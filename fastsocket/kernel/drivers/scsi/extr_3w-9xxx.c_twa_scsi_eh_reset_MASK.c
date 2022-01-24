#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int /*<<< orphan*/ * cmnd; TYPE_4__* device; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {int /*<<< orphan*/  ioctl_lock; int /*<<< orphan*/  host; int /*<<< orphan*/  num_resets; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;
typedef  TYPE_2__ TW_Device_Extension ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int SUCCESS ; 
 int /*<<< orphan*/  TW_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *SCpnt)
{
	TW_Device_Extension *tw_dev = NULL;
	int retval = FAILED;

	tw_dev = (TW_Device_Extension *)SCpnt->device->host->hostdata;

	tw_dev->num_resets++;

	FUNC3(KERN_WARNING, SCpnt->device,
		"WARNING: (0x%02X:0x%04X): Command (0x%x) timed out, resetting card.\n",
		TW_DRIVER, 0x2c, SCpnt->cmnd[0]);

	/* Make sure we are not issuing an ioctl or resetting from ioctl */
	FUNC1(&tw_dev->ioctl_lock);

	/* Now reset the card and some of the device extension data */
	if (FUNC4(tw_dev)) {
		FUNC0(tw_dev->host, TW_DRIVER, 0x2b, "Controller reset failed during scsi host reset");
		goto out;
	}

	retval = SUCCESS;
out:
	FUNC2(&tw_dev->ioctl_lock);
	return retval;
}
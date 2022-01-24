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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; int /*<<< orphan*/  host; int /*<<< orphan*/  list_lock; } ;
struct scsi_cmnd {struct scsi_device* device; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct scsi_cmnd *cmd)
{
	struct scsi_device *sdev = cmd->device;
	unsigned long flags;

	/* serious error if the command hasn't come from a device list */
	FUNC4(&cmd->device->list_lock, flags);
	FUNC0(FUNC3(&cmd->list));
	FUNC2(&cmd->list);
	FUNC5(&cmd->device->list_lock, flags);

	FUNC1(cmd->device->host, cmd, &sdev->sdev_gendev);
}
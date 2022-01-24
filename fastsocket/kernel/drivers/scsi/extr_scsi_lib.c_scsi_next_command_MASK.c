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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; struct request_queue* request_queue; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct request_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 

void FUNC4(struct scsi_cmnd *cmd)
{
	struct scsi_device *sdev = cmd->device;
	struct request_queue *q = sdev->request_queue;

	/* need to hold a reference on the device before we let go of the cmd */
	FUNC0(&sdev->sdev_gendev);

	FUNC2(cmd);
	FUNC3(q);

	/* ok to remove device now */
	FUNC1(&sdev->sdev_gendev);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_device_handler {int dummy; } ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; TYPE_1__* scsi_dh_data; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; struct scsi_device* queuedata; } ;
struct TYPE_2__ {struct scsi_device_handler* scsi_dh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,struct scsi_device_handler*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC5(struct request_queue *q)
{
	unsigned long flags;
	struct scsi_device *sdev;
	struct scsi_device_handler *scsi_dh = NULL;

	FUNC3(q->queue_lock, flags);
	sdev = q->queuedata;
	if (!sdev || !FUNC0(&sdev->sdev_gendev))
		sdev = NULL;
	FUNC4(q->queue_lock, flags);

	if (!sdev)
		return;

	if (sdev->scsi_dh_data) {
		scsi_dh = sdev->scsi_dh_data->scsi_dh;
		FUNC2(sdev, scsi_dh);
	}
	FUNC1(&sdev->sdev_gendev);
}
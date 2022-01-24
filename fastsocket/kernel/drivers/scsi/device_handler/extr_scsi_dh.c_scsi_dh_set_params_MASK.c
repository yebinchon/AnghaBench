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
struct scsi_device_handler {int (* set_params ) (struct scsi_device*,char const*) ;} ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; TYPE_1__* scsi_dh_data; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; struct scsi_device* queuedata; } ;
struct TYPE_2__ {struct scsi_device_handler* scsi_dh; } ;

/* Variables and functions */
 int SCSI_DH_NOSYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC4 (struct scsi_device*,char const*) ; 

int FUNC5(struct request_queue *q, const char *params)
{
	int err = -SCSI_DH_NOSYS;
	unsigned long flags;
	struct scsi_device *sdev;
	struct scsi_device_handler *scsi_dh = NULL;

	FUNC2(q->queue_lock, flags);
	sdev = q->queuedata;
	if (sdev && sdev->scsi_dh_data)
		scsi_dh = sdev->scsi_dh_data->scsi_dh;
	if (scsi_dh && scsi_dh->set_params && FUNC0(&sdev->sdev_gendev))
		err = 0;
	FUNC3(q->queue_lock, flags);

	if (err)
		return err;
	err = scsi_dh->set_params(sdev, params);
	FUNC1(&sdev->sdev_gendev);
	return err;
}
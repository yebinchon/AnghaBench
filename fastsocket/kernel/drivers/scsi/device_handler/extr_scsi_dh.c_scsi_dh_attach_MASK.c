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
struct scsi_device_handler {int dummy; } ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; struct scsi_device* queuedata; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct scsi_device_handler* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct scsi_device*,struct scsi_device_handler*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

int FUNC6(struct request_queue *q, const char *name)
{
	unsigned long flags;
	struct scsi_device *sdev;
	struct scsi_device_handler *scsi_dh;
	int err = 0;

	scsi_dh = FUNC1(name);
	if (!scsi_dh)
		return -EINVAL;

	FUNC4(q->queue_lock, flags);
	sdev = q->queuedata;
	if (!sdev || !FUNC0(&sdev->sdev_gendev))
		err = -ENODEV;
	FUNC5(q->queue_lock, flags);

	if (!err) {
		err = FUNC3(sdev, scsi_dh);
		FUNC2(&sdev->sdev_gendev);
	}
	return err;
}
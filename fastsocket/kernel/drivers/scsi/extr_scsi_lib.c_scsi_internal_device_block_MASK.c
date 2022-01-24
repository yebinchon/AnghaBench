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
struct scsi_device {struct request_queue* request_queue; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDEV_BLOCK ; 
 int /*<<< orphan*/  SDEV_CREATED_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int FUNC1 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

int
FUNC4(struct scsi_device *sdev)
{
	struct request_queue *q = sdev->request_queue;
	unsigned long flags;
	int err = 0;

	err = FUNC1(sdev, SDEV_BLOCK);
	if (err) {
		err = FUNC1(sdev, SDEV_CREATED_BLOCK);

		if (err)
			return err;
	}

	/* 
	 * The device has transitioned to SDEV_BLOCK.  Stop the
	 * block layer from calling the midlayer with this device's
	 * request queue. 
	 */
	FUNC2(q->queue_lock, flags);
	FUNC0(q);
	FUNC3(q->queue_lock, flags);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct scsi_device {TYPE_2__* host; int /*<<< orphan*/  requeue_work; int /*<<< orphan*/  request_queue; struct device sdev_dev; scalar_t__ is_visible; struct device sdev_gendev; } ;
struct TYPE_4__ {TYPE_1__* hostt; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* slave_destroy ) (struct scsi_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SDEV_CANCEL ; 
 int /*<<< orphan*/  SDEV_DEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 scalar_t__ FUNC6 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 

void FUNC10(struct scsi_device *sdev)
{
	struct device *dev = &sdev->sdev_gendev;

	if (sdev->is_visible) {
		if (FUNC6(sdev, SDEV_CANCEL) != 0)
			return;

		FUNC1(sdev->request_queue);
		FUNC4(&sdev->sdev_dev);
		FUNC9(dev);
		FUNC3(dev);
	} else
		FUNC5(&sdev->sdev_dev);

	/*
	 * Stop accepting new requests and wait until all queuecommand() and
	 * scsi_run_queue() invocations have finished before tearing down the
	 * device.
	 */
	FUNC6(sdev, SDEV_DEL);
	FUNC0(sdev->request_queue);
	FUNC2(&sdev->requeue_work);

	if (sdev->host->hostt->slave_destroy)
		sdev->host->hostt->slave_destroy(sdev);
	FUNC8(dev);

	FUNC5(dev);
}
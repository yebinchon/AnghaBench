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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;
struct scsi_cmnd {struct request* request; struct scsi_device* device; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct request_queue *q, struct scsi_cmnd *cmd)
{
	struct scsi_device *sdev = cmd->device;
	struct request *req = cmd->request;
	unsigned long flags;

	/*
	 * We need to hold a reference on the device to avoid the queue being
	 * killed after the unlock and before scsi_run_queue is invoked which
	 * may happen because scsi_unprep_request() puts the command which
	 * releases its reference on the device.
	 */
	FUNC1(&sdev->sdev_gendev);

	FUNC5(q->queue_lock, flags);
	FUNC4(req);
	FUNC0(q, req);
	FUNC6(q->queue_lock, flags);

	FUNC3(q);

	FUNC2(&sdev->sdev_gendev);
}
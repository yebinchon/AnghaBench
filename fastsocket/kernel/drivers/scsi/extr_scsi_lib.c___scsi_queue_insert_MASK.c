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
struct scsi_target {int /*<<< orphan*/  max_target_blocked; int /*<<< orphan*/  target_blocked; } ;
struct scsi_device {int /*<<< orphan*/  requeue_work; int /*<<< orphan*/  max_device_blocked; int /*<<< orphan*/  device_blocked; struct request_queue* request_queue; struct Scsi_Host* host; } ;
struct scsi_cmnd {int /*<<< orphan*/  request; struct scsi_device* device; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct Scsi_Host {int /*<<< orphan*/  max_host_blocked; int /*<<< orphan*/  host_blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
#define  SCSI_MLQUEUE_DEVICE_BUSY 131 
#define  SCSI_MLQUEUE_EH_RETRY 130 
#define  SCSI_MLQUEUE_HOST_BUSY 129 
#define  SCSI_MLQUEUE_TARGET_BUSY 128 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 struct scsi_target* FUNC5 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct scsi_cmnd *cmd, int reason, int unbusy)
{
	struct Scsi_Host *host = cmd->device->host;
	struct scsi_device *device = cmd->device;
	struct scsi_target *starget = FUNC5(device);
	struct request_queue *q = device->request_queue;
	unsigned long flags;

	FUNC0(1,
		 FUNC3("Inserting command %p into mlqueue\n", cmd));

	/*
	 * Set the appropriate busy bit for the device/host.
	 *
	 * If the host/device isn't busy, assume that something actually
	 * completed, and that we should be able to queue a command now.
	 *
	 * Note that the prior mid-layer assumption that any host could
	 * always queue at least one command is now broken.  The mid-layer
	 * will implement a user specifiable stall (see
	 * scsi_host.max_host_blocked and scsi_device.max_device_blocked)
	 * if a command is requeued with no other commands outstanding
	 * either for the device or for the host.
	 */
	switch (reason) {
	case SCSI_MLQUEUE_HOST_BUSY:
		host->host_blocked = host->max_host_blocked;
		break;
	case SCSI_MLQUEUE_DEVICE_BUSY:
	case SCSI_MLQUEUE_EH_RETRY:
		device->device_blocked = device->max_device_blocked;
		break;
	case SCSI_MLQUEUE_TARGET_BUSY:
		starget->target_blocked = starget->max_target_blocked;
		break;
	}

	/*
	 * Decrement the counters, since these commands are no longer
	 * active on the host/device.
	 */
	if (unbusy)
		FUNC4(device);

	/*
	 * Requeue this command.  It will go before all other commands
	 * that are already in the queue. Schedule requeue work under
	 * lock such that the kblockd_schedule_work() call happens
	 * before blk_cleanup_queue() finishes.
         */
	FUNC6(q->queue_lock, flags);
	FUNC1(q, cmd->request);
	FUNC2(q, &device->requeue_work);
	FUNC7(q->queue_lock, flags);
}
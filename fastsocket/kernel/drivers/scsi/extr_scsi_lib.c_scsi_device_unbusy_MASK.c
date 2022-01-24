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
struct scsi_target {int /*<<< orphan*/  target_busy; } ;
struct scsi_device {TYPE_1__* request_queue; int /*<<< orphan*/  device_busy; struct Scsi_Host* host; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; scalar_t__ host_eh_scheduled; scalar_t__ host_failed; int /*<<< orphan*/  host_busy; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 scalar_t__ FUNC1 (struct Scsi_Host*) ; 
 struct scsi_target* FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct scsi_device *sdev)
{
	struct Scsi_Host *shost = sdev->host;
	struct scsi_target *starget = FUNC2(sdev);
	unsigned long flags;

	FUNC4(shost->host_lock, flags);
	shost->host_busy--;
	starget->target_busy--;
	if (FUNC7(FUNC1(shost) &&
		     (shost->host_failed || shost->host_eh_scheduled)))
		FUNC0(shost);
	FUNC5(shost->host_lock);
	FUNC3(sdev->request_queue->queue_lock);
	sdev->device_busy--;
	FUNC6(sdev->request_queue->queue_lock, flags);
}
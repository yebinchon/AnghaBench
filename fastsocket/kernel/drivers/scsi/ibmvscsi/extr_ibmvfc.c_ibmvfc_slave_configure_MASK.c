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
struct scsi_device {scalar_t__ type; int allow_restart; int /*<<< orphan*/  queue_depth; scalar_t__ tagged_supported; struct Scsi_Host* host; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_SIMPLE_TAG ; 
 scalar_t__ TYPE_DISK ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct scsi_device *sdev)
{
	struct Scsi_Host *shost = sdev->host;
	unsigned long flags = 0;

	FUNC3(shost->host_lock, flags);
	if (sdev->type == TYPE_DISK)
		sdev->allow_restart = 1;

	if (sdev->tagged_supported) {
		FUNC2(sdev, MSG_SIMPLE_TAG);
		FUNC0(sdev, sdev->queue_depth);
	} else
		FUNC1(sdev, sdev->queue_depth);
	FUNC4(shost->host_lock, flags);
	return 0;
}
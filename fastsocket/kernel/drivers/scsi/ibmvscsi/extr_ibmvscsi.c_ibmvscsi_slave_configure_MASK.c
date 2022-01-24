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
struct scsi_device {scalar_t__ type; int allow_restart; int /*<<< orphan*/  request_queue; struct Scsi_Host* host; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; int /*<<< orphan*/  cmd_per_lun; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ TYPE_DISK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct scsi_device *sdev)
{
	struct Scsi_Host *shost = sdev->host;
	unsigned long lock_flags = 0;

	FUNC2(shost->host_lock, lock_flags);
	if (sdev->type == TYPE_DISK) {
		sdev->allow_restart = 1;
		FUNC0(sdev->request_queue, 120 * HZ);
	}
	FUNC1(sdev, 0, shost->cmd_per_lun);
	FUNC3(shost->host_lock, lock_flags);
	return 0;
}
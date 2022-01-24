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
struct scsi_device {int /*<<< orphan*/  request_queue; scalar_t__ device_busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDEV_QUIESCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct scsi_device *sdev)
{
	int err = FUNC1(sdev, SDEV_QUIESCE);
	if (err)
		return err;

	FUNC2(sdev->request_queue);
	while (sdev->device_busy) {
		FUNC0(200);
		FUNC2(sdev->request_queue);
	}
	return 0;
}
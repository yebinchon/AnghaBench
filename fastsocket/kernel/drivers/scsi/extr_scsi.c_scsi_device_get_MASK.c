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
struct scsi_device {scalar_t__ sdev_state; TYPE_2__* host; int /*<<< orphan*/  sdev_gendev; } ;
struct TYPE_4__ {TYPE_1__* hostt; } ;
struct TYPE_3__ {int /*<<< orphan*/  module; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ SDEV_DEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct scsi_device *sdev)
{
	if (sdev->sdev_state == SDEV_DEL)
		return -ENXIO;
	if (!FUNC0(&sdev->sdev_gendev))
		return -ENXIO;
	/* We can fail this if we're doing SCSI operations
	 * from module exit (like cache flush) */
	FUNC1(sdev->host->hostt->module);

	return 0;
}
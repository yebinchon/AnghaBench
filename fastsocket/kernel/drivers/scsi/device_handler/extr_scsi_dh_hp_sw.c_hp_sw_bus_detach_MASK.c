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
struct scsi_dh_data {int dummy; } ;
struct scsi_device {TYPE_1__* request_queue; struct scsi_dh_data* scsi_dh_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  HP_SW_NAME ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_dh_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC5( struct scsi_device *sdev )
{
	struct scsi_dh_data *scsi_dh_data;
	unsigned long flags;

	FUNC3(sdev->request_queue->queue_lock, flags);
	scsi_dh_data = sdev->scsi_dh_data;
	sdev->scsi_dh_data = NULL;
	FUNC4(sdev->request_queue->queue_lock, flags);
	FUNC1(THIS_MODULE);

	FUNC2(KERN_NOTICE, sdev, "%s: Detached\n", HP_SW_NAME);

	FUNC0(scsi_dh_data);
}
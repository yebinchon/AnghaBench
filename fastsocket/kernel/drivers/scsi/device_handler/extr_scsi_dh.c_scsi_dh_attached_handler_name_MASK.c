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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; TYPE_2__* scsi_dh_data; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; struct scsi_device* queuedata; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {TYPE_1__* scsi_dh; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

const char *FUNC5(struct request_queue *q, gfp_t gfp)
{
	unsigned long flags;
	struct scsi_device *sdev;
	const char *handler_name = NULL;

	FUNC3(q->queue_lock, flags);
	sdev = q->queuedata;
	if (!sdev || !FUNC0(&sdev->sdev_gendev))
		sdev = NULL;
	FUNC4(q->queue_lock, flags);

	if (!sdev)
		return NULL;

	if (sdev->scsi_dh_data)
		handler_name = FUNC1(sdev->scsi_dh_data->scsi_dh->name, gfp);

	FUNC2(&sdev->sdev_gendev);
	return handler_name;
}
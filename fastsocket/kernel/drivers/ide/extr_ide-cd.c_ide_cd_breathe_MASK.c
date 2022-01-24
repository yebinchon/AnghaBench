#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {int errors; } ;
struct cdrom_info {scalar_t__ write_timeout; } ;
struct TYPE_3__ {struct request_queue* queue; struct cdrom_info* driver_data; } ;
typedef  TYPE_1__ ide_drive_t ;

/* Variables and functions */
 scalar_t__ ATAPI_WAIT_WRITE_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(ide_drive_t *drive, struct request *rq)
{

	struct cdrom_info *info = drive->driver_data;

	if (!rq->errors)
		info->write_timeout = jiffies +	ATAPI_WAIT_WRITE_BUSY;

	rq->errors = 1;

	if (FUNC3(jiffies, info->write_timeout))
		return 0;
	else {
		struct request_queue *q = drive->queue;
		unsigned long flags;

		/*
		 * take a breather relying on the unplug timer to kick us again
		 */

		FUNC1(q->queue_lock, flags);
		FUNC0(q);
		FUNC2(q->queue_lock, flags);

		return 1;
	}
}
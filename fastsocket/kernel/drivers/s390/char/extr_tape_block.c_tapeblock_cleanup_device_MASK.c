#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_4__* request_queue; TYPE_2__* disk; } ;
struct tape_device {TYPE_1__ blk_data; } ;
struct TYPE_7__ {void* queuedata; } ;
struct TYPE_6__ {struct tape_device* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (struct tape_device*) ; 

void
FUNC5(struct tape_device *device)
{
	FUNC2();
	FUNC4(device);

	if (!device->blk_data.disk) {
		goto cleanup_queue;
	}

	FUNC1(device->blk_data.disk);
	device->blk_data.disk->private_data =
		FUNC4(device->blk_data.disk->private_data);
	FUNC3(device->blk_data.disk);

	device->blk_data.disk = NULL;
cleanup_queue:
	device->blk_data.request_queue->queuedata = FUNC4(device);

	FUNC0(device->blk_data.request_queue);
	device->blk_data.request_queue = NULL;
}
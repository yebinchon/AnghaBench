#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct loop_device {int lo_number; TYPE_1__* lo_queue; int /*<<< orphan*/  lo_lock; int /*<<< orphan*/  lo_event; int /*<<< orphan*/ * lo_thread; int /*<<< orphan*/  lo_ctl_mutex; struct gendisk* lo_disk; int /*<<< orphan*/  lo_state; } ;
struct gendisk {int first_minor; int /*<<< orphan*/  disk_name; TYPE_1__* queue; struct loop_device* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;
struct TYPE_4__ {struct loop_device* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LOOP_MAJOR ; 
 int /*<<< orphan*/  Lo_unbound ; 
 struct gendisk* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct loop_device*) ; 
 struct loop_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lo_fops ; 
 int /*<<< orphan*/  loop_make_request ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int part_shift ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct loop_device *FUNC10(int i)
{
	struct loop_device *lo;
	struct gendisk *disk;

	lo = FUNC6(sizeof(*lo), GFP_KERNEL);
	if (!lo)
		goto out;

	lo->lo_state = Lo_unbound;

	lo->lo_queue = FUNC1(GFP_KERNEL);
	if (!lo->lo_queue)
		goto out_free_dev;

	/*
	 * set queue make_request_fn
	 */
	FUNC3(lo->lo_queue, loop_make_request);
	lo->lo_queue->queuedata = lo;

	disk = lo->lo_disk = FUNC0(1 << part_shift);
	if (!disk)
		goto out_free_queue;

	FUNC7(&lo->lo_ctl_mutex);
	lo->lo_number		= i;
	lo->lo_thread		= NULL;
	FUNC4(&lo->lo_event);
	FUNC8(&lo->lo_lock);
	disk->major		= LOOP_MAJOR;
	disk->first_minor	= i << part_shift;
	disk->fops		= &lo_fops;
	disk->private_data	= lo;
	disk->queue		= lo->lo_queue;
	FUNC9(disk->disk_name, "loop%d", i);
	return lo;

out_free_queue:
	FUNC2(lo->lo_queue);
out_free_dev:
	FUNC5(lo);
out:
	return NULL;
}
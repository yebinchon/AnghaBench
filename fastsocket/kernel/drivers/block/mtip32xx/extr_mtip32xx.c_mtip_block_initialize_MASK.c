#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct driver_data {int instance; unsigned int index; int trim_supp; TYPE_3__* disk; TYPE_8__* queue; int /*<<< orphan*/ * mtip_svc_handler; TYPE_2__* pdev; int /*<<< orphan*/  dd_flag; int /*<<< orphan*/  major; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_20__ {int discard_granularity; scalar_t__ discard_zeroes_data; } ;
struct TYPE_24__ {TYPE_1__ limits; int /*<<< orphan*/  queue_flags; struct driver_data* queuedata; } ;
struct TYPE_23__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_22__ {int first_minor; TYPE_8__* queue; struct driver_data* private_data; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; int /*<<< orphan*/ * driverfs_dev; int /*<<< orphan*/  disk_name; } ;
struct TYPE_21__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISK_NAME_LEN ; 
 int EAGAIN ; 
 int EFAULT ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTIP_DDF_INIT_DONE_BIT ; 
 int MTIP_FTL_REBUILD_MAGIC ; 
 int MTIP_MAX_MINORS ; 
 int /*<<< orphan*/  MTIP_MAX_SG ; 
 int MTIP_MAX_TRIM_ENTRIES ; 
 int MTIP_MAX_TRIM_ENTRY_LEN ; 
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int) ; 
 TYPE_8__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 TYPE_5__* FUNC16 (TYPE_3__*) ; 
 int FUNC17 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned int) ; 
 struct kobject* FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct kobject*) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ,struct driver_data*,unsigned char*) ; 
 int /*<<< orphan*/  mtip_block_ops ; 
 int /*<<< orphan*/  FUNC23 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC24 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC25 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC26 (struct driver_data*,int /*<<< orphan*/ *) ; 
 int FUNC27 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC28 (struct driver_data*,struct kobject*) ; 
 int /*<<< orphan*/  mtip_make_request ; 
 int /*<<< orphan*/  mtip_service_thread ; 
 int /*<<< orphan*/  FUNC29 (TYPE_3__*) ; 
 int FUNC30 (char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rssd_index_ida ; 
 int /*<<< orphan*/  rssd_index_lock ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (unsigned char*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC36(struct driver_data *dd)
{
	int rv = 0, wait_for_rebuild = 0;
	sector_t capacity;
	unsigned int index = 0;
	struct kobject *kobj;
	unsigned char thd_name[16];

	if (dd->disk)
		goto skip_create_disk; /* hw init done, before rebuild */

	/* Initialize the protocol layer. */
	wait_for_rebuild = FUNC27(dd);
	if (wait_for_rebuild < 0) {
		FUNC14(&dd->pdev->dev,
			"Protocol layer initialization failed\n");
		rv = -EINVAL;
		goto protocol_init_error;
	}

	dd->disk = FUNC2(MTIP_MAX_MINORS);
	if (dd->disk  == NULL) {
		FUNC14(&dd->pdev->dev,
			"Unable to allocate gendisk structure\n");
		rv = -EINVAL;
		goto alloc_disk_error;
	}

	/* Generate the disk name, implemented same as in sd.c */
	do {
		if (!FUNC18(&rssd_index_ida, GFP_KERNEL))
			goto ida_get_error;

		FUNC33(&rssd_index_lock);
		rv = FUNC17(&rssd_index_ida, &index);
		FUNC34(&rssd_index_lock);
	} while (rv == -EAGAIN);

	if (rv)
		goto ida_get_error;

	rv = FUNC30("rssd",
				index,
				dd->disk->disk_name,
				DISK_NAME_LEN);
	if (rv)
		goto disk_index_error;

	dd->disk->driverfs_dev	= &dd->pdev->dev;
	dd->disk->major		= dd->major;
	dd->disk->first_minor	= dd->instance * MTIP_MAX_MINORS;
	dd->disk->fops		= &mtip_block_ops;
	dd->disk->private_data	= dd;
	dd->index		= index;

	/*
	 * if rebuild pending, start the service thread, and delay the block
	 * queue creation and add_disk()
	 */
	if (wait_for_rebuild == MTIP_FTL_REBUILD_MAGIC)
		goto start_service_thread;

skip_create_disk:
	/* Allocate the request queue. */
	dd->queue = FUNC3(GFP_KERNEL);
	if (dd->queue == NULL) {
		FUNC14(&dd->pdev->dev,
			"Unable to allocate request queue\n");
		rv = -ENOMEM;
		goto block_queue_alloc_init_error;
	}

	/* Attach our request function to the request queue. */
	FUNC7(dd->queue, mtip_make_request);

	dd->disk->queue		= dd->queue;
	dd->queue->queuedata	= dd;

	/* Set device limits. */
	FUNC31(QUEUE_FLAG_NONROT, &dd->queue->queue_flags);
	FUNC11(dd->queue, MTIP_MAX_SG);
	FUNC12(dd->queue, 4096);
	FUNC9(dd->queue, 0xffff);
	FUNC10(dd->queue, 0x400000);
	FUNC6(dd->queue, 4096);

	/*
	 * write back cache is not supported in the device. FUA depends on
	 * write back cache support, hence setting flush support to zero.
	 */
	FUNC5(dd->queue, 0);

	/* Signal trim support */
	if (dd->trim_supp == true) {
		FUNC31(QUEUE_FLAG_DISCARD, &dd->queue->queue_flags);
		dd->queue->limits.discard_granularity = 4096;
		FUNC8(dd->queue,
			MTIP_MAX_TRIM_ENTRY_LEN * MTIP_MAX_TRIM_ENTRIES);
		dd->queue->limits.discard_zeroes_data = 0;
	}

	/* Set the capacity of the device in 512 byte sectors. */
	if (!(FUNC26(dd, &capacity))) {
		FUNC15(&dd->pdev->dev,
			"Could not read drive capacity\n");
		rv = -EIO;
		goto read_capacity_error;
	}
	FUNC32(dd->disk, capacity);

	/* Enable the block device and add it to /dev */
	FUNC1(dd->disk);

	/*
	 * Now that the disk is active, initialize any sysfs attributes
	 * managed by the protocol layer.
	 */
	kobj = FUNC20(&FUNC16(dd->disk)->kobj);
	if (kobj) {
		FUNC28(dd, kobj);
		FUNC21(kobj);
	}
	FUNC24(dd);

	if (dd->mtip_svc_handler) {
		FUNC31(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag);
		return rv; /* service thread created for handling rebuild */
	}

start_service_thread:
	FUNC35(thd_name, "mtip_svc_thd_%02d", index);

	dd->mtip_svc_handler = FUNC22(mtip_service_thread,
						dd, thd_name);

	if (FUNC0(dd->mtip_svc_handler)) {
		FUNC14(&dd->pdev->dev, "service thread failed to start\n");
		dd->mtip_svc_handler = NULL;
		rv = -EFAULT;
		goto kthread_run_error;
	}

	if (wait_for_rebuild == MTIP_FTL_REBUILD_MAGIC)
		rv = wait_for_rebuild;

	return rv;

kthread_run_error:
	FUNC23(dd);

	/* Delete our gendisk. This also removes the device from /dev */
	FUNC13(dd->disk);

read_capacity_error:
	FUNC4(dd->queue);

block_queue_alloc_init_error:
disk_index_error:
	FUNC33(&rssd_index_lock);
	FUNC19(&rssd_index_ida, index);
	FUNC34(&rssd_index_lock);

ida_get_error:
	FUNC29(dd->disk);

alloc_disk_error:
	FUNC25(dd); /* De-initialize the protocol layer. */

protocol_init_error:
	return rv;
}
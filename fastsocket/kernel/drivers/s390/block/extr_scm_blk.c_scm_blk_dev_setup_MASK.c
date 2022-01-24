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
struct scm_device {int size; int /*<<< orphan*/  dev; int /*<<< orphan*/  nr_max_block; } ;
struct scm_blk_dev {TYPE_1__* gendisk; struct request_queue* rq; int /*<<< orphan*/  rq_lock; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  queued_reqs; int /*<<< orphan*/  finished_requests; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; struct scm_device* scmdev; } ;
struct request_queue {struct scm_device* queuedata; int /*<<< orphan*/  unplug_delay; } ;
struct aidaw {int dummy; } ;
struct TYPE_4__ {unsigned int first_minor; scalar_t__ disk_name; int /*<<< orphan*/  major; struct request_queue* queue; int /*<<< orphan*/ * fops; struct scm_device* private_data; int /*<<< orphan*/ * driverfs_dev; } ;

/* Variables and functions */
 scalar_t__ DISK_NAME_LEN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  QUEUE_FLAG_NONROT ; 
 unsigned int SCM_NR_PARTS ; 
 int /*<<< orphan*/  SCM_OPER ; 
 int /*<<< orphan*/  SCM_QUEUE_DELAY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*) ; 
 struct request_queue* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct request_queue*,unsigned int) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nr_devices ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC14 (struct scm_blk_dev*) ; 
 int /*<<< orphan*/  scm_blk_devops ; 
 int /*<<< orphan*/  scm_blk_request ; 
 scalar_t__ scm_blk_tasklet ; 
 int /*<<< orphan*/  scm_major ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int FUNC16 (scalar_t__,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 

int FUNC19(struct scm_blk_dev *bdev, struct scm_device *scmdev)
{
	struct request_queue *rq;
	int len, ret = -ENOMEM;
	unsigned int devindex, nr_max_blk;

	devindex = FUNC4(&nr_devices) - 1;
	/* scma..scmz + scmaa..scmzz */
	if (devindex > 701) {
		ret = -ENODEV;
		goto out;
	}

	bdev->scmdev = scmdev;
	bdev->state = SCM_OPER;
	FUNC17(&bdev->rq_lock);
	FUNC17(&bdev->lock);
	FUNC0(&bdev->finished_requests);
	FUNC5(&bdev->queued_reqs, 0);
	FUNC18(&bdev->tasklet,
		     (void (*)(unsigned long)) scm_blk_tasklet,
		     (unsigned long) bdev);

	rq = FUNC7(scm_blk_request, &bdev->rq_lock);
	if (!rq)
		goto out;

	bdev->rq = rq;
	nr_max_blk = FUNC11(scmdev->nr_max_block,
			 (unsigned int) (PAGE_SIZE / sizeof(struct aidaw)));

	FUNC8(rq, 1 << 12);
	FUNC9(rq, nr_max_blk << 3); /* 8 * 512 = blk_size */
	FUNC10(rq, nr_max_blk);
	rq->unplug_delay = FUNC12(SCM_QUEUE_DELAY);
	FUNC13(QUEUE_FLAG_NONROT, rq);
	FUNC14(bdev);

	bdev->gendisk = FUNC2(SCM_NR_PARTS);
	if (!bdev->gendisk)
		goto out_queue;

	rq->queuedata = scmdev;
	bdev->gendisk->driverfs_dev = &scmdev->dev;
	bdev->gendisk->private_data = scmdev;
	bdev->gendisk->fops = &scm_blk_devops;
	bdev->gendisk->queue = rq;
	bdev->gendisk->major = scm_major;
	bdev->gendisk->first_minor = devindex * SCM_NR_PARTS;

	len = FUNC16(bdev->gendisk->disk_name, DISK_NAME_LEN, "scm");
	if (devindex > 25) {
		len += FUNC16(bdev->gendisk->disk_name + len,
				DISK_NAME_LEN - len, "%c",
				'a' + (devindex / 26) - 1);
		devindex = devindex % 26;
	}
	FUNC16(bdev->gendisk->disk_name + len, DISK_NAME_LEN - len, "%c",
		 'a' + devindex);

	/* 512 byte sectors */
	FUNC15(bdev->gendisk, scmdev->size >> 9);
	FUNC1(bdev->gendisk);
	return 0;

out_queue:
	FUNC6(rq);
out:
	FUNC3(&nr_devices);
	return ret;
}
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
struct request_queue {int dummy; } ;
struct i2o_block_device {struct gendisk* gd; int /*<<< orphan*/  lock; int /*<<< orphan*/  wcache; int /*<<< orphan*/  rcache; int /*<<< orphan*/  open_queue; } ;
struct gendisk {struct i2o_block_device* private_data; int /*<<< orphan*/ * fops; struct request_queue* queue; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_PREFETCH ; 
 int /*<<< orphan*/  CACHE_WRITEBACK ; 
 int ENOMEM ; 
 struct i2o_block_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2O_MAJOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gendisk* FUNC2 (int) ; 
 struct request_queue* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2o_block_fops ; 
 int /*<<< orphan*/  i2o_block_prep_req_fn ; 
 int /*<<< orphan*/  i2o_block_request_fn ; 
 int /*<<< orphan*/  FUNC5 (struct i2o_block_device*) ; 
 struct i2o_block_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct i2o_block_device *FUNC10(void)
{
	struct i2o_block_device *dev;
	struct gendisk *gd;
	struct request_queue *queue;
	int rc;

	dev = FUNC6(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		FUNC7("Insufficient memory to allocate I2O Block disk.\n");
		rc = -ENOMEM;
		goto exit;
	}

	FUNC1(&dev->open_queue);
	FUNC9(&dev->lock);
	dev->rcache = CACHE_PREFETCH;
	dev->wcache = CACHE_WRITEBACK;

	/* allocate a gendisk with 16 partitions */
	gd = FUNC2(16);
	if (!gd) {
		FUNC7("Insufficient memory to allocate gendisk.\n");
		rc = -ENOMEM;
		goto cleanup_dev;
	}

	/* initialize the request queue */
	queue = FUNC3(i2o_block_request_fn, &dev->lock);
	if (!queue) {
		FUNC7("Insufficient memory to allocate request queue.\n");
		rc = -ENOMEM;
		goto cleanup_queue;
	}

	FUNC4(queue, i2o_block_prep_req_fn);

	gd->major = I2O_MAJOR;
	gd->queue = queue;
	gd->fops = &i2o_block_fops;
	gd->private_data = dev;

	dev->gd = gd;

	return dev;

      cleanup_queue:
	FUNC8(gd);

      cleanup_dev:
	FUNC5(dev);

      exit:
	return FUNC0(rc);
}
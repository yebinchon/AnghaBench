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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct request_queue {int /*<<< orphan*/  max_hw_segments; int /*<<< orphan*/  max_phys_segments; int /*<<< orphan*/  max_sectors; struct i2o_block_device* queuedata; } ;
struct TYPE_2__ {int user_tid; int /*<<< orphan*/  tid; } ;
struct i2o_device {TYPE_1__ lct_data; int /*<<< orphan*/  device; struct i2o_controller* iop; } ;
struct i2o_controller {scalar_t__ limit_sectors; scalar_t__ adaptec; } ;
struct i2o_block_device {int power; struct gendisk* gd; struct i2o_device* i2o_dev; } ;
struct gendisk {int first_minor; int /*<<< orphan*/  disk_name; struct request_queue* queue; int /*<<< orphan*/ * driverfs_dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 unsigned short I2O_MAX_SECTORS ; 
 unsigned short I2O_MAX_SECTORS_LIMITED ; 
 scalar_t__ FUNC0 (struct i2o_block_device*) ; 
 int KERNEL_SECTOR_SHIFT ; 
 int FUNC1 (struct i2o_block_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct i2o_block_device*) ; 
 struct i2o_block_device* FUNC7 () ; 
 int /*<<< orphan*/  i2o_block_driver ; 
 scalar_t__ FUNC8 (struct i2o_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2o_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2o_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2o_device*,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct i2o_controller*,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,char) ; 
 struct i2o_device* FUNC21 (struct device*) ; 

__attribute__((used)) static int FUNC22(struct device *dev)
{
	struct i2o_device *i2o_dev = FUNC21(dev);
	struct i2o_controller *c = i2o_dev->iop;
	struct i2o_block_device *i2o_blk_dev;
	struct gendisk *gd;
	struct request_queue *queue;
	static int unit = 0;
	int rc;
	u64 size;
	u32 blocksize;
	u16 body_size = 4;
	u16 power;
	unsigned short max_sectors;

#ifdef CONFIG_I2O_EXT_ADAPTEC
	if (c->adaptec)
		body_size = 8;
#endif

	if (c->limit_sectors)
		max_sectors = I2O_MAX_SECTORS_LIMITED;
	else
		max_sectors = I2O_MAX_SECTORS;

	/* skip devices which are used by IOP */
	if (i2o_dev->lct_data.user_tid != 0xfff) {
		FUNC15("skipping used device %03x\n", i2o_dev->lct_data.tid);
		return -ENODEV;
	}

	if (FUNC8(i2o_dev)) {
		FUNC18("Unable to claim device. Installation aborted\n");
		rc = -EFAULT;
		goto exit;
	}

	i2o_blk_dev = FUNC7();
	if (FUNC0(i2o_blk_dev)) {
		FUNC16("could not alloc a new I2O block device");
		rc = FUNC1(i2o_blk_dev);
		goto claim_release;
	}

	i2o_blk_dev->i2o_dev = i2o_dev;
	FUNC6(dev, i2o_blk_dev);

	/* setup gendisk */
	gd = i2o_blk_dev->gd;
	gd->first_minor = unit << 4;
	FUNC20(gd->disk_name, "i2o/hd%c", 'a' + unit);
	gd->driverfs_dev = &i2o_dev->device;

	/* setup request queue */
	queue = gd->queue;
	queue->queuedata = i2o_blk_dev;

	FUNC4(queue, max_sectors);
	FUNC5(queue, FUNC12(c, body_size));

	FUNC15("max sectors = %d\n", queue->max_sectors);
	FUNC15("phys segments = %d\n", queue->max_phys_segments);
	FUNC15("max hw segments = %d\n", queue->max_hw_segments);

	/*
	 *      Ask for the current media data. If that isn't supported
	 *      then we ask for the device capacity data
	 */
	if (!FUNC11(i2o_dev, 0x0004, 1, &blocksize, 4) ||
	    !FUNC11(i2o_dev, 0x0000, 3, &blocksize, 4)) {
		FUNC3(queue, FUNC13(blocksize));
	} else
		FUNC18("unable to get blocksize of %s\n", gd->disk_name);

	if (!FUNC11(i2o_dev, 0x0004, 0, &size, 8) ||
	    !FUNC11(i2o_dev, 0x0000, 4, &size, 8)) {
		FUNC19(gd, FUNC14(size) >> KERNEL_SECTOR_SHIFT);
	} else
		FUNC18("could not get size of %s\n", gd->disk_name);

	if (!FUNC11(i2o_dev, 0x0000, 2, &power, 2))
		i2o_blk_dev->power = power;

	FUNC10(i2o_dev, &i2o_block_driver, 0, 0xffffffff);

	FUNC2(gd);

	unit++;

	FUNC17("device added (TID: %03x): %s\n", i2o_dev->lct_data.tid,
		 i2o_blk_dev->gd->disk_name);

	return 0;

      claim_release:
	FUNC9(i2o_dev);

      exit:
	return rc;
}
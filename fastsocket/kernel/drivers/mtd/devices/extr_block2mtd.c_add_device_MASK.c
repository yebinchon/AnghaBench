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
struct block_device {TYPE_1__* bd_inode; int /*<<< orphan*/  bd_dev; } ;
struct TYPE_4__ {char* name; int size; int erasesize; int writesize; int /*<<< orphan*/  index; int /*<<< orphan*/  owner; struct block2mtd_dev* priv; int /*<<< orphan*/  read; int /*<<< orphan*/  sync; int /*<<< orphan*/  writev; int /*<<< orphan*/  write; int /*<<< orphan*/  erase; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct block2mtd_dev {TYPE_2__ mtd; int /*<<< orphan*/  list; struct block_device* blkdev; int /*<<< orphan*/  write_mutex; } ;
typedef  scalar_t__ dev_t ;
struct TYPE_3__ {int i_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC2 (struct block_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MTD_BLOCK_MAJOR ; 
 int /*<<< orphan*/  MTD_CAP_RAM ; 
 int /*<<< orphan*/  MTD_RAM ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  blkmtd_device_list ; 
 int /*<<< orphan*/  block2mtd_erase ; 
 int /*<<< orphan*/  FUNC5 (struct block2mtd_dev*) ; 
 int /*<<< orphan*/  block2mtd_read ; 
 int /*<<< orphan*/  block2mtd_sync ; 
 int /*<<< orphan*/  block2mtd_write ; 
 int /*<<< orphan*/  default_mtd_writev ; 
 char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct block2mtd_dev* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*) ; 
 struct block_device* FUNC11 (char*,int,int /*<<< orphan*/ *) ; 
 struct block_device* FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*) ; 
 int FUNC14 (char*) ; 

__attribute__((used)) static struct block2mtd_dev *FUNC15(char *devname, int erase_size)
{
	struct block_device *bdev;
	struct block2mtd_dev *dev;
	char *name;

	if (!devname)
		return NULL;

	dev = FUNC7(sizeof(struct block2mtd_dev), GFP_KERNEL);
	if (!dev)
		return NULL;

	/* Get a handle on the device */
	bdev = FUNC11(devname, FMODE_READ|FMODE_WRITE, NULL);
#ifndef MODULE
	if (FUNC2(bdev)) {

		/* We might not have rootfs mounted at this point. Try
		   to resolve the device name by other means. */

		dev_t devt = FUNC10(devname);
		if (devt) {
			bdev = FUNC12(devt, FMODE_WRITE | FMODE_READ);
		}
	}
#endif

	if (FUNC2(bdev)) {
		FUNC0("error: cannot open device %s", devname);
		goto devinit_err;
	}
	dev->blkdev = bdev;

	if (FUNC3(bdev->bd_dev) == MTD_BLOCK_MAJOR) {
		FUNC0("attempting to use an MTD device as a block device");
		goto devinit_err;
	}

	FUNC9(&dev->write_mutex);

	/* Setup the MTD structure */
	/* make the name contain the block device in */
	name = FUNC6(sizeof("block2mtd: ") + FUNC14(devname) + 1,
			GFP_KERNEL);
	if (!name)
		goto devinit_err;

	FUNC13(name, "block2mtd: %s", devname);
	dev->mtd.name = name;

	dev->mtd.size = dev->blkdev->bd_inode->i_size & PAGE_MASK;
	dev->mtd.erasesize = erase_size;
	dev->mtd.writesize = 1;
	dev->mtd.type = MTD_RAM;
	dev->mtd.flags = MTD_CAP_RAM;
	dev->mtd.erase = block2mtd_erase;
	dev->mtd.write = block2mtd_write;
	dev->mtd.writev = default_mtd_writev;
	dev->mtd.sync = block2mtd_sync;
	dev->mtd.read = block2mtd_read;
	dev->mtd.priv = dev;
	dev->mtd.owner = THIS_MODULE;

	if (FUNC4(&dev->mtd)) {
		/* Device didnt get added, so free the entry */
		goto devinit_err;
	}
	FUNC8(&dev->list, &blkmtd_device_list);
	FUNC1("mtd%d: [%s] erase_size = %dKiB [%d]", dev->mtd.index,
			dev->mtd.name + FUNC14("block2mtd: "),
			dev->mtd.erasesize >> 10, dev->mtd.erasesize);
	return dev;

devinit_err:
	FUNC5(dev);
	return NULL;
}
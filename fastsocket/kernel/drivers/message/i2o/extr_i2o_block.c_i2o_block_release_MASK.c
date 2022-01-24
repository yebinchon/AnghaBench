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
typedef  int u8 ;
struct i2o_block_device {int flags; int /*<<< orphan*/  i2o_dev; } ;
struct gendisk {struct i2o_block_device* private_data; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2o_block_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct gendisk *disk, fmode_t mode)
{
	struct i2o_block_device *dev = disk->private_data;
	u8 operation;

	/*
	 * This is to deail with the case of an application
	 * opening a device and then the device dissapears while
	 * it's in use, and then the application tries to release
	 * it.  ex: Unmounting a deleted RAID volume at reboot.
	 * If we send messages, it will just cause FAILs since
	 * the TID no longer exists.
	 */
	if (!dev->i2o_dev)
		return 0;

	FUNC0(dev->i2o_dev);

	FUNC2(dev->i2o_dev, -1);

	if (dev->flags & (1 << 3 | 1 << 4))	/* Removable */
		operation = 0x21;
	else
		operation = 0x24;

	FUNC1(dev, operation);

	return 0;
}
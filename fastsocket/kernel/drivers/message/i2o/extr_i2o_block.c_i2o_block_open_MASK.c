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
struct i2o_block_device {int power; int /*<<< orphan*/  i2o_dev; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct i2o_block_device* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2o_block_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct block_device *bdev, fmode_t mode)
{
	struct i2o_block_device *dev = bdev->bd_disk->private_data;

	if (!dev->i2o_dev)
		return -ENODEV;

	if (dev->power > 0x1f)
		FUNC2(dev, 0x02);

	FUNC1(dev->i2o_dev, -1);

	FUNC0(dev->i2o_dev, -1);

	FUNC3("Ready.\n");

	return 0;
}
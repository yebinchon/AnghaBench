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
struct TYPE_3__ {int /*<<< orphan*/  tid; } ;
struct i2o_device {TYPE_1__ lct_data; } ;
struct i2o_block_device {TYPE_2__* gd; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct i2o_block_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i2o_block_device*) ; 
 int /*<<< orphan*/  i2o_block_driver ; 
 int /*<<< orphan*/  FUNC4 (struct i2o_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2o_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2o_device* FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct i2o_device *i2o_dev = FUNC7(dev);
	struct i2o_block_device *i2o_blk_dev = FUNC1(dev);

	FUNC6("device removed (TID: %03x): %s\n", i2o_dev->lct_data.tid,
		 i2o_blk_dev->gd->disk_name);

	FUNC5(i2o_dev, &i2o_block_driver, 0, 0);

	FUNC0(i2o_blk_dev->gd);

	FUNC2(dev, NULL);

	FUNC4(i2o_dev);

	FUNC3(i2o_blk_dev);

	return 0;
}
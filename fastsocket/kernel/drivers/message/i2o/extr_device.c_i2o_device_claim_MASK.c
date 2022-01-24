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
struct TYPE_2__ {int /*<<< orphan*/  tid; } ;
struct i2o_device {int /*<<< orphan*/  lock; TYPE_1__ lct_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2O_CLAIM_PRIMARY ; 
 int /*<<< orphan*/  I2O_CMD_UTIL_CLAIM ; 
 int FUNC0 (struct i2o_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 

int FUNC4(struct i2o_device *dev)
{
	int rc = 0;

	FUNC1(&dev->lock);

	rc = FUNC0(dev, I2O_CMD_UTIL_CLAIM, I2O_CLAIM_PRIMARY);
	if (!rc)
		FUNC3("i2o: claim of device %d succeded\n",
			 dev->lct_data.tid);
	else
		FUNC3("i2o: claim of device %d failed %d\n",
			 dev->lct_data.tid, rc);

	FUNC2(&dev->lock);

	return rc;
}
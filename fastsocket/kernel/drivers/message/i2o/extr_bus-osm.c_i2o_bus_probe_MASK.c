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
struct i2o_device {TYPE_1__ lct_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_scan ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct i2o_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct i2o_device *i2o_dev = FUNC4(FUNC1(dev));
	int rc;

	rc = FUNC0(dev, &dev_attr_scan);
	if (rc)
		goto err_out;

	FUNC2("device added (TID: %03x)\n", i2o_dev->lct_data.tid);

	return 0;

err_out:
	FUNC3(dev);
	return rc;
}
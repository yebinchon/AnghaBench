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
struct i2o_device {TYPE_1__* iop; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct i2o_device* exec; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_product_id ; 
 int /*<<< orphan*/  dev_attr_vendor_id ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i2o_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  i2o_exec_driver ; 
 struct i2o_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct i2o_device *i2o_dev = FUNC3(dev);
	int rc;

	rc = FUNC2(i2o_dev, &i2o_exec_driver, 0, 0xffffffff);
	if (rc) goto err_out;

	rc = FUNC0(dev, &dev_attr_vendor_id);
	if (rc) goto err_evtreg;
	rc = FUNC0(dev, &dev_attr_product_id);
	if (rc) goto err_vid;

	i2o_dev->iop->exec = i2o_dev;

	return 0;

err_vid:
	FUNC1(dev, &dev_attr_vendor_id);
err_evtreg:
	FUNC2(FUNC3(dev), &i2o_exec_driver, 0, 0);
err_out:
	return rc;
}
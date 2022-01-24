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
struct i2c_dev {struct i2c_dev* dev; } ;
struct i2c_adapter {int /*<<< orphan*/  nr; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_MAJOR ; 
 scalar_t__ FUNC0 (struct i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_dev*) ; 
 int /*<<< orphan*/  dev_attr_name ; 
 struct i2c_dev* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_dev* FUNC6 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2c_dev_class ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_dev*) ; 

__attribute__((used)) static int FUNC9(struct i2c_adapter *adap)
{
	struct i2c_dev *i2c_dev;
	int res;

	i2c_dev = FUNC6(adap);
	if (FUNC0(i2c_dev))
		return FUNC2(i2c_dev);

	/* register this i2c device with the driver core */
	i2c_dev->dev = FUNC3(i2c_dev_class, &adap->dev,
				     FUNC1(I2C_MAJOR, adap->nr), NULL,
				     "i2c-%d", adap->nr);
	if (FUNC0(i2c_dev->dev)) {
		res = FUNC2(i2c_dev->dev);
		goto error;
	}
	res = FUNC4(i2c_dev->dev, &dev_attr_name);
	if (res)
		goto error_destroy;

	FUNC7("i2c-dev: adapter [%s] registered as minor %d\n",
		 adap->name, adap->nr);
	return 0;
error_destroy:
	FUNC5(i2c_dev_class, FUNC1(I2C_MAJOR, adap->nr));
error:
	FUNC8(i2c_dev);
	return res;
}
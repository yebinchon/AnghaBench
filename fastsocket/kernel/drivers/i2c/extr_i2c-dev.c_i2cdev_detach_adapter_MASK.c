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
struct i2c_dev {int /*<<< orphan*/  dev; } ;
struct i2c_adapter {int /*<<< orphan*/  name; int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_MAJOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  i2c_dev_class ; 
 struct i2c_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_dev*) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adap)
{
	struct i2c_dev *i2c_dev;

	i2c_dev = FUNC3(adap->nr);
	if (!i2c_dev) /* attach_adapter must have failed */
		return 0;

	FUNC2(i2c_dev->dev, &dev_attr_name);
	FUNC5(i2c_dev);
	FUNC1(i2c_dev_class, FUNC0(I2C_MAJOR, adap->nr));

	FUNC4("i2c-dev: adapter [%s] unregistered\n", adap->name);
	return 0;
}
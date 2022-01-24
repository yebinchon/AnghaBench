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
struct inode {int dummy; } ;
struct i2c_dev {TYPE_1__* adap; } ;
struct i2c_client {struct i2c_adapter* adapter; int /*<<< orphan*/ * driver; int /*<<< orphan*/  name; } ;
struct i2c_adapter {int nr; } ;
struct file {struct i2c_client* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 struct i2c_dev* FUNC0 (unsigned int) ; 
 struct i2c_adapter* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2cdev_driver ; 
 unsigned int FUNC3 (struct inode*) ; 
 struct i2c_client* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	unsigned int minor = FUNC3(inode);
	struct i2c_client *client;
	struct i2c_adapter *adap;
	struct i2c_dev *i2c_dev;
	int ret = 0;

	FUNC5();
	i2c_dev = FUNC0(minor);
	if (!i2c_dev) {
		ret = -ENODEV;
		goto out;
	}

	adap = FUNC1(i2c_dev->adap->nr);
	if (!adap) {
		ret = -ENODEV;
		goto out;
	}

	/* This creates an anonymous i2c_client, which may later be
	 * pointed to some address using I2C_SLAVE or I2C_SLAVE_FORCE.
	 *
	 * This client is ** NEVER REGISTERED ** with the driver model
	 * or I2C core code!!  It just holds private copies of addressing
	 * information and maybe a PEC flag.
	 */
	client = FUNC4(sizeof(*client), GFP_KERNEL);
	if (!client) {
		FUNC2(adap);
		ret = -ENOMEM;
		goto out;
	}
	FUNC6(client->name, I2C_NAME_SIZE, "i2c-dev %d", adap->nr);
	client->driver = &i2cdev_driver;

	client->adapter = adap;
	file->private_data = client;

out:
	FUNC7();
	return ret;
}
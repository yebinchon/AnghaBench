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
struct i2c_client {int /*<<< orphan*/  detected; } ;
struct i2c_board_info {int addr; int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EEXIST ; 
 size_t EINVAL ; 
 int I2C_NAME_SIZE ; 
 int /*<<< orphan*/  core_lock ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct i2c_client* FUNC3 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,char*,int*,char*) ; 
 char* FUNC10 (char const*,char) ; 
 struct i2c_adapter* FUNC11 (struct device*) ; 
 int /*<<< orphan*/  userspace_devices ; 

__attribute__((used)) static ssize_t
FUNC12(struct device *dev, struct device_attribute *attr,
		     const char *buf, size_t count)
{
	struct i2c_adapter *adap = FUNC11(dev);
	struct i2c_board_info info;
	struct i2c_client *client;
	char *blank, end;
	int res;

	FUNC2(dev, "The new_device interface is still experimental "
		 "and may change in a near future\n");
	FUNC6(&info, 0, sizeof(struct i2c_board_info));

	blank = FUNC10(buf, ' ');
	if (!blank) {
		FUNC0(dev, "%s: Missing parameters\n", "new_device");
		return -EINVAL;
	}
	if (blank - buf > I2C_NAME_SIZE - 1) {
		FUNC0(dev, "%s: Invalid device name\n", "new_device");
		return -EINVAL;
	}
	FUNC5(info.type, buf, blank - buf);

	/* Parse remaining parameters, reject extra parameters */
	res = FUNC9(++blank, "%hi%c", &info.addr, &end);
	if (res < 1) {
		FUNC0(dev, "%s: Can't parse I2C address\n", "new_device");
		return -EINVAL;
	}
	if (res > 1  && end != '\n') {
		FUNC0(dev, "%s: Extra parameters\n", "new_device");
		return -EINVAL;
	}

	if (info.addr < 0x03 || info.addr > 0x77) {
		FUNC0(dev, "%s: Invalid I2C address 0x%hx\n", "new_device",
			info.addr);
		return -EINVAL;
	}

	client = FUNC3(adap, &info);
	if (!client)
		return -EEXIST;

	/* Keep track of the added device */
	FUNC7(&core_lock);
	FUNC4(&client->detected, &userspace_devices);
	FUNC8(&core_lock);
	FUNC1(dev, "%s: Instantiated device %s at 0x%02hx\n", "new_device",
		 info.type, info.addr);

	return count;
}
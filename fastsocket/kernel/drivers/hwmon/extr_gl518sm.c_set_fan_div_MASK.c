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
struct i2c_client {int dummy; } ;
struct gl518_data {unsigned long* fan_div; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  GL518_REG_MISC ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned long) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct gl518_data* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct i2c_client *client = FUNC7(dev);
	struct gl518_data *data = FUNC3(client);
	int nr = FUNC8(attr)->index;
	int regvalue;
	unsigned long val = FUNC6(buf, NULL, 10);

	switch (val) {
	case 1: val = 0; break;
	case 2: val = 1; break;
	case 4: val = 2; break;
	case 8: val = 3; break;
	default:
		FUNC0(dev, "Invalid fan clock divider %lu, choose one "
			"of 1, 2, 4 or 8\n", val);
		return -EINVAL;
	}

	FUNC4(&data->update_lock);
	regvalue = FUNC1(client, GL518_REG_MISC);
	data->fan_div[nr] = val;
	regvalue = (regvalue & ~(0xc0 >> (2 * nr)))
		 | (data->fan_div[nr] << (6 - 2 * nr));
	FUNC2(client, GL518_REG_MISC, regvalue);
	FUNC5(&data->update_lock);
	return count;
}
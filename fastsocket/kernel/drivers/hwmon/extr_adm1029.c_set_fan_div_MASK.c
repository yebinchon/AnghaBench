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
typedef  int u8 ;
struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1029_data {int /*<<< orphan*/  update_lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * ADM1029_REG_FAN_DIV ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,long) ; 
 struct adm1029_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
	    struct device_attribute *devattr, const char *buf, size_t count)
{
	struct i2c_client *client = FUNC7(dev);
	struct adm1029_data *data = FUNC1(client);
	struct sensor_device_attribute *attr = FUNC8(devattr);
	long val = FUNC6(buf, NULL, 10);
	u8 reg;

	FUNC4(&data->update_lock);

	/*Read actual config */
	reg = FUNC2(client,
				       ADM1029_REG_FAN_DIV[attr->index]);

	switch (val) {
	case 1:
		val = 1;
		break;
	case 2:
		val = 2;
		break;
	case 4:
		val = 3;
		break;
	default:
		FUNC5(&data->update_lock);
		FUNC0(&client->dev, "fan_div value %ld not "
			"supported. Choose one of 1, 2 or 4!\n", val);
		return -EINVAL;
	}
	/* Update the value */
	reg = (reg & 0x3F) | (val << 6);

	/* Write value */
	FUNC3(client,
				  ADM1029_REG_FAN_DIV[attr->index], reg);
	FUNC5(&data->update_lock);

	return count;
}
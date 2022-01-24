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
struct sensor_device_attribute {int index; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int* fan_min; int* fan_div; int /*<<< orphan*/  update_lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct adm9240_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC9 (struct device*) ; 
 struct sensor_device_attribute* FUNC10 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
		struct device_attribute *devattr,
		const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC10(devattr);
	struct i2c_client *client = FUNC9(dev);
	struct adm9240_data *data = FUNC4(client);
	unsigned long val = FUNC8(buf, NULL, 10);
	int nr = attr->index;
	u8 new_div;

	FUNC6(&data->update_lock);

	if (!val) {
		data->fan_min[nr] = 255;
		new_div = data->fan_div[nr];

		FUNC3(&client->dev, "fan%u low limit set disabled\n",
				nr + 1);

	} else if (val < 1350000 / (8 * 254)) {
		new_div = 3;
		data->fan_min[nr] = 254;

		FUNC3(&client->dev, "fan%u low limit set minimum %u\n",
				nr + 1, FUNC1(254, 1 << new_div));

	} else {
		unsigned int new_min = 1350000 / val;

		new_div = 0;
		while (new_min > 192 && new_div < 3) {
			new_div++;
			new_min /= 2;
		}
		if (!new_min) /* keep > 0 */
			new_min++;

		data->fan_min[nr] = new_min;

		FUNC3(&client->dev, "fan%u low limit set fan speed %u\n",
				nr + 1, FUNC1(new_min, 1 << new_div));
	}

	if (new_div != data->fan_div[nr]) {
		data->fan_div[nr] = new_div;
		FUNC2(client, nr, new_div);
	}
	FUNC5(client, FUNC0(nr),
			data->fan_min[nr]);

	FUNC7(&data->update_lock);
	return count;
}
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
typedef  int /*<<< orphan*/  u8 ;
struct sensor_device_attribute {int index; } ;
struct lm63_data {int* temp11; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
#define  LM63_REG_REMOTE_HIGH_LSB 131 
#define  LM63_REG_REMOTE_HIGH_MSB 130 
#define  LM63_REG_REMOTE_LOW_LSB 129 
#define  LM63_REG_REMOTE_LOW_MSB 128 
 int FUNC0 (long) ; 
 struct lm63_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC6 (struct device*) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *devattr,
			  const char *buf, size_t count)
{
	static const u8 reg[4] = {
		LM63_REG_REMOTE_LOW_MSB,
		LM63_REG_REMOTE_LOW_LSB,
		LM63_REG_REMOTE_HIGH_MSB,
		LM63_REG_REMOTE_HIGH_LSB,
	};

	struct sensor_device_attribute *attr = FUNC7(devattr);
	struct i2c_client *client = FUNC6(dev);
	struct lm63_data *data = FUNC1(client);
	long val = FUNC5(buf, NULL, 10);
	int nr = attr->index;

	FUNC3(&data->update_lock);
	data->temp11[nr] = FUNC0(val);
	FUNC2(client, reg[(nr - 1) * 2],
				  data->temp11[nr] >> 8);
	FUNC2(client, reg[(nr - 1) * 2 + 1],
				  data->temp11[nr] & 0xff);
	FUNC4(&data->update_lock);
	return count;
}
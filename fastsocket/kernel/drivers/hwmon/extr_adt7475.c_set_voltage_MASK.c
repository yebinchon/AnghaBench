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
struct sensor_device_attribute_2 {size_t nr; size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int** voltage; int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t MIN ; 
 unsigned char FUNC0 (int) ; 
 unsigned char FUNC1 (int) ; 
 struct adt7475_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,int,long*) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 
 int FUNC9 (long) ; 
 int FUNC10 (long) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{

	struct sensor_device_attribute_2 *sattr = FUNC8(attr);
	struct i2c_client *client = FUNC7(dev);
	struct adt7475_data *data = FUNC2(client);
	unsigned char reg;
	long val;

	if (FUNC6(buf, 10, &val))
		return -EINVAL;

	FUNC4(&data->lock);

	data->voltage[sattr->nr][sattr->index] =
		sattr->index ? FUNC9(val) : FUNC10(val);

	if (sattr->nr == MIN)
		reg = FUNC1(sattr->index);
	else
		reg = FUNC0(sattr->index);

	FUNC3(client, reg,
				  data->voltage[sattr->nr][sattr->index] >> 2);
	FUNC5(&data->lock);

	return count;
}
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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7414_data {long* temps; int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/ * AD7414_REG_LIMIT ; 
 long FUNC0 (long,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 struct ad7414_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC6 (struct device*) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct i2c_client *client = FUNC6(dev);
	struct ad7414_data *data = FUNC2(client);
	int index = FUNC7(attr)->index;
	u8 reg = AD7414_REG_LIMIT[index];
	long temp = FUNC5(buf, NULL, 10);

	temp = FUNC0(temp, -40000, 85000);
	temp = (temp + (temp < 0 ? -500 : 500)) / 1000;

	FUNC3(&data->lock);
	data->temps[index] = temp;
	FUNC1(client, reg, temp);
	FUNC4(&data->lock);
	return count;
}
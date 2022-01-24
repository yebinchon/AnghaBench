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
struct lm95241_data {int rate; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int HZ ; 
 struct lm95241_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,int*) ; 
 struct i2c_client* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct i2c_client *client = FUNC2(dev);
	struct lm95241_data *data = FUNC0(client);

	FUNC1(buf, 10, &data->rate);
	data->rate = data->rate * HZ / 1000;

	return count;
}
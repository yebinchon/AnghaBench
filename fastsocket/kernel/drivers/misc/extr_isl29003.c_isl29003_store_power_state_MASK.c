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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct i2c_client*,unsigned long) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned long*) ; 
 struct i2c_client* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					  struct device_attribute *attr,
					  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC2(dev);
	unsigned long val;
	int ret;

	if ((FUNC1(buf, 10, &val) < 0) || (val > 1))
		return -EINVAL;

	ret = FUNC0(client, val);
	return ret ? ret : count;
}
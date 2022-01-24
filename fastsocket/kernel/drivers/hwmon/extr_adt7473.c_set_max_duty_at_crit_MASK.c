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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7473_data {int max_duty_at_overheat; int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADT7473_CFG4_MAX_DUTY_AT_OVT ; 
 int /*<<< orphan*/  ADT7473_REG_CFG4 ; 
 size_t EINVAL ; 
 struct adt7473_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,int,long*) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				    struct device_attribute *devattr,
				    const char *buf,
				    size_t count)
{
	u8 reg;
	struct i2c_client *client = FUNC6(dev);
	struct adt7473_data *data = FUNC0(client);
	long temp;

	if (FUNC5(buf, 10, &temp))
		return -EINVAL;

	FUNC3(&data->lock);
	data->max_duty_at_overheat = !!temp;
	reg = FUNC1(client, ADT7473_REG_CFG4);
	if (temp)
		reg |= ADT7473_CFG4_MAX_DUTY_AT_OVT;
	else
		reg &= ~ADT7473_CFG4_MAX_DUTY_AT_OVT;
	FUNC2(client, ADT7473_REG_CFG4, reg);
	FUNC4(&data->lock);

	return count;
}
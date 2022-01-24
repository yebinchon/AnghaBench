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
struct gl520_data {int beep_mask; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  GL520_REG_BEEP_MASK ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct gl520_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC6 (struct device*) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct i2c_client *client = FUNC6(dev);
	struct gl520_data *data = FUNC2(client);
	int bitnr = FUNC7(attr)->index;
	unsigned long bit;

	bit = FUNC5(buf, NULL, 10);
	if (bit & ~1)
		return -EINVAL;

	FUNC3(&data->update_lock);
	data->beep_mask = FUNC0(client, GL520_REG_BEEP_MASK);
	if (bit)
		data->beep_mask |= (1 << bitnr);
	else
		data->beep_mask &= ~(1 << bitnr);
	FUNC1(client, GL520_REG_BEEP_MASK, data->beep_mask);
	FUNC4(&data->update_lock);
	return count;
}
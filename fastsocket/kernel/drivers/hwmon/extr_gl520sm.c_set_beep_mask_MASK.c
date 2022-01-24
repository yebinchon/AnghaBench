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
struct gl520_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/  beep_mask; int /*<<< orphan*/  alarm_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL520_REG_BEEP_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gl520_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct gl520_data *data = FUNC1(client);
	u8 r = FUNC4(buf, NULL, 10);

	FUNC2(&data->update_lock);
	r &= data->alarm_mask;
	data->beep_mask = r;
	FUNC0(client, GL520_REG_BEEP_MASK, r);
	FUNC3(&data->update_lock);
	return count;
}
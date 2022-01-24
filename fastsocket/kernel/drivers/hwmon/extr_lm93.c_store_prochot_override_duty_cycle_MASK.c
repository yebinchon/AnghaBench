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
typedef  int /*<<< orphan*/  u32 ;
struct lm93_data {int prochot_override; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM93_REG_PROCHOT_OVERRIDE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct lm93_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
						struct device_attribute *attr,
						const char *buf, size_t count)
{
	struct i2c_client *client = FUNC6(dev);
	struct lm93_data *data = FUNC1(client);
	u32 val = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);
	data->prochot_override = (data->prochot_override & 0xf0) |
					FUNC0(val, 0, 15);
	FUNC2(client, LM93_REG_PROCHOT_OVERRIDE,
			data->prochot_override);
	FUNC4(&data->update_lock);
	return count;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct w83792d_data {int chassis_clear; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  W83792D_REG_CHASSIS_CLR ; 
 struct w83792d_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct w83792d_data *data = FUNC1(client);
	u32 val;
	u8 temp1 = 0, temp2 = 0;

	val = FUNC4(buf, NULL, 10);
	FUNC2(&data->update_lock);
	data->chassis_clear = FUNC0(val, 0 ,1);
	temp1 = ((data->chassis_clear) << 7) & 0x80;
	temp2 = FUNC6(client,
		W83792D_REG_CHASSIS_CLR) & 0x7f;
	FUNC7(client, W83792D_REG_CHASSIS_CLR, temp1 | temp2);
	FUNC3(&data->update_lock);

	return count;
}
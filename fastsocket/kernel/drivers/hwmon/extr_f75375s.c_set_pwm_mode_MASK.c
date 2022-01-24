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
typedef  int u8 ;
struct i2c_client {int dummy; } ;
struct f75375_data {int* pwm_mode; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  F75375_REG_CONFIG1 ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct f75375_data* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	int nr = FUNC8(attr)->index;
	struct i2c_client *client = FUNC7(dev);
	struct f75375_data *data = FUNC3(client);
	int val = FUNC6(buf, NULL, 10);
	u8 conf = 0;

	if (!(val == 0 || val == 1))
		return -EINVAL;

	FUNC4(&data->update_lock);
	conf = FUNC1(client, F75375_REG_CONFIG1);
	conf = ~(1 << FUNC0(nr));

	if (val == 0)
		conf |= (1 << FUNC0(nr)) ;

	FUNC2(client, F75375_REG_CONFIG1, conf);
	data->pwm_mode[nr] = val;
	FUNC5(&data->update_lock);
	return count;
}
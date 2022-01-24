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
typedef  int u32 ;
struct w83l786ng_data {int* pwm_enable; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int* W83L786NG_PWM_ENABLE_SHIFT ; 
 int /*<<< orphan*/  W83L786NG_REG_FAN_CFG ; 
 struct w83l786ng_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
		 const char *buf, size_t count)
{
	int nr = FUNC5(attr)->index;
	struct i2c_client *client = FUNC4(dev);
	struct w83l786ng_data *data = FUNC0(client);
	u32 val = FUNC3(buf, NULL, 10);

	u8 reg;

	if (!val || (val > 2))  /* only modes 1 and 2 are supported */
		return -EINVAL;

	FUNC1(&data->update_lock);
	reg = FUNC6(client, W83L786NG_REG_FAN_CFG);
	data->pwm_enable[nr] = val;
	reg &= ~(0x02 << W83L786NG_PWM_ENABLE_SHIFT[nr]);
	reg |= (val - 1) << W83L786NG_PWM_ENABLE_SHIFT[nr];
	FUNC7(client, W83L786NG_REG_FAN_CFG, reg);
	FUNC2(&data->update_lock);
	return count;
}
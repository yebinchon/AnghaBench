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
typedef  int u32 ;
struct w83781d_data {int pwm2_enable; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_CONFIG ; 
 int /*<<< orphan*/  W83781D_REG_PWMCLK12 ; 
 struct w83781d_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct w83781d_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct w83781d_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *da,
		const char *buf, size_t count)
{
	struct w83781d_data *data = FUNC0(dev);
	u32 val, reg;

	val = FUNC3(buf, NULL, 10);

	FUNC1(&data->update_lock);

	switch (val) {
	case 0:
	case 1:
		reg = FUNC4(data, W83781D_REG_PWMCLK12);
		FUNC5(data, W83781D_REG_PWMCLK12,
				    (reg & 0xf7) | (val << 3));

		reg = FUNC4(data, W83781D_REG_BEEP_CONFIG);
		FUNC5(data, W83781D_REG_BEEP_CONFIG,
				    (reg & 0xef) | (!val << 4));

		data->pwm2_enable = val;
		break;

	default:
		FUNC2(&data->update_lock);
		return -EINVAL;
	}

	FUNC2(&data->update_lock);
	return count;
}
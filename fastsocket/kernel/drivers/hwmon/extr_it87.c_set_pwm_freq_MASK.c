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
struct it87_data {int fan_ctl; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  IT87_REG_FAN_CTL ; 
 struct it87_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct it87_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct it87_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int* pwm_freq ; 
 unsigned long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct it87_data *data = FUNC0(dev);
	unsigned long val = FUNC5(buf, NULL, 10);
	int i;

	/* Search for the nearest available frequency */
	for (i = 0; i < 7; i++) {
		if (val > (pwm_freq[i] + pwm_freq[i+1]) / 2)
			break;
	}

	FUNC3(&data->update_lock);
	data->fan_ctl = FUNC1(data, IT87_REG_FAN_CTL) & 0x8f;
	data->fan_ctl |= i << 4;
	FUNC2(data, IT87_REG_FAN_CTL, data->fan_ctl);
	FUNC4(&data->update_lock);

	return count;
}
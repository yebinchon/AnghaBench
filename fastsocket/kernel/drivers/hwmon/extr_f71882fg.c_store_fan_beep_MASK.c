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
struct f71882fg_data {int fan_beep; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  F71882FG_REG_FAN_BEEP ; 
 struct f71882fg_data* FUNC0 (struct device*) ; 
 int FUNC1 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct f71882fg_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute
	*devattr, const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC0(dev);
	int nr = FUNC6(devattr)->index;
	unsigned long val = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);
	data->fan_beep = FUNC1(data, F71882FG_REG_FAN_BEEP);
	if (val)
		data->fan_beep |= 1 << nr;
	else
		data->fan_beep &= ~(1 << nr);

	FUNC2(data, F71882FG_REG_FAN_BEEP, data->fan_beep);
	FUNC4(&data->update_lock);

	return count;
}
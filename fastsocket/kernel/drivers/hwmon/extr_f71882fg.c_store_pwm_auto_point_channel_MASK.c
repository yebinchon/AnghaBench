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
struct f71882fg_data {int* pwm_auto_point_mapping; int /*<<< orphan*/  update_lock; scalar_t__ temp_start; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct f71882fg_data* FUNC1 (struct device*) ; 
 int FUNC2 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f71882fg_data*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
					    struct device_attribute *devattr,
					    const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC1(dev);
	int nr = FUNC7(devattr)->index;
	long val = FUNC6(buf, NULL, 10);

	switch (val) {
	case 1:
		val = 0;
		break;
	case 2:
		val = 1;
		break;
	case 4:
		val = 2;
		break;
	default:
		return -EINVAL;
	}
	val += data->temp_start;
	FUNC4(&data->update_lock);
	data->pwm_auto_point_mapping[nr] =
		FUNC2(data, FUNC0(nr));
	val = (data->pwm_auto_point_mapping[nr] & 0xfc) | val;
	FUNC3(data, FUNC0(nr), val);
	data->pwm_auto_point_mapping[nr] = val;
	FUNC5(&data->update_lock);

	return count;
}
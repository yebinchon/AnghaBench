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
struct f71882fg_data {long* fan_full_speed; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long FUNC1 (long,int,int) ; 
 struct f71882fg_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct f71882fg_data*,int /*<<< orphan*/ ,long) ; 
 long FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				    struct device_attribute *devattr,
				    const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC2(dev);
	int nr = FUNC8(devattr)->index;
	long val = FUNC7(buf, NULL, 10);

	val = FUNC1(val, 23, 1500000);
	val = FUNC4(val);

	FUNC5(&data->update_lock);
	FUNC3(data, FUNC0(nr), val);
	data->fan_full_speed[nr] = val;
	FUNC6(&data->update_lock);

	return count;
}
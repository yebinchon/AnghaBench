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
struct f71882fg_data {long* temp_ovt; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long FUNC1 (long,int /*<<< orphan*/ ,int) ; 
 struct f71882fg_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct f71882fg_data*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute
	*devattr, const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC2(dev);
	int nr = FUNC7(devattr)->index;
	long val = FUNC6(buf, NULL, 10) / 1000;
	val = FUNC1(val, 0, 255);

	FUNC4(&data->update_lock);
	FUNC3(data, FUNC0(nr), val);
	data->temp_ovt[nr] = val;
	FUNC5(&data->update_lock);

	return count;
}
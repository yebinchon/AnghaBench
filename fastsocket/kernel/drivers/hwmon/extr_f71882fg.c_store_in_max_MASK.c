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
struct f71882fg_data {long in1_max; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  F71882FG_REG_IN1_HIGH ; 
 long FUNC0 (long,int /*<<< orphan*/ ,int) ; 
 struct f71882fg_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct f71882fg_data*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute
	*devattr, const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC1(dev);
	long val = FUNC5(buf, NULL, 10) / 8;
	val = FUNC0(val, 0, 255);

	FUNC3(&data->update_lock);
	FUNC2(data, F71882FG_REG_IN1_HIGH, val);
	data->in1_max = val;
	FUNC4(&data->update_lock);

	return count;
}
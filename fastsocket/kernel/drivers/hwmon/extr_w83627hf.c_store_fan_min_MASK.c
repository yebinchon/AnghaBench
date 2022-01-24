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
typedef  int /*<<< orphan*/  u32 ;
struct w83627hf_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_min; int /*<<< orphan*/ * fan_div; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct w83627hf_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC7 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC8 (struct w83627hf_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *devattr,
	      const char *buf, size_t count)
{
	int nr = FUNC7(devattr)->index;
	struct w83627hf_data *data = FUNC3(dev);
	u32 val = FUNC6(buf, NULL, 10);

	FUNC4(&data->update_lock);
	data->fan_min[nr] = FUNC1(val, FUNC0(data->fan_div[nr]));
	FUNC8(data, FUNC2(nr),
			     data->fan_min[nr]);

	FUNC5(&data->update_lock);
	return count;
}
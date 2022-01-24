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
struct w83627hf_data {int beep_mask; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS1 ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS2 ; 
 int /*<<< orphan*/  W83781D_REG_BEEP_INTS3 ; 
 struct w83627hf_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct w83627hf_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct w83627hf_data *data = FUNC1(dev);
	unsigned long val;

	val = FUNC4(buf, NULL, 10);

	FUNC2(&data->update_lock);

	/* preserve beep enable */
	data->beep_mask = (data->beep_mask & 0x8000)
			| FUNC0(val);
	FUNC5(data, W83781D_REG_BEEP_INTS1,
			    data->beep_mask & 0xff);
	FUNC5(data, W83781D_REG_BEEP_INTS3,
			    ((data->beep_mask) >> 16) & 0xff);
	FUNC5(data, W83781D_REG_BEEP_INTS2,
			    (data->beep_mask >> 8) & 0xff);

	FUNC3(&data->update_lock);
	return count;
}
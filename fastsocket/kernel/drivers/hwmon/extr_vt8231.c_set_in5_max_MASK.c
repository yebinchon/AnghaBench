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
struct vt8231_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_max; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ,int) ; 
 struct vt8231_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * regvoltmax ; 
 unsigned long FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vt8231_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct vt8231_data *data = FUNC1(dev);
	unsigned long val = FUNC4(buf, NULL, 10);

	FUNC2(&data->update_lock);
	data->in_max[5] = FUNC0(((val * 958 * 34) / (10000 * 54)) + 3,
					0, 255);
	FUNC5(data, regvoltmax[5], data->in_max[5]);
	FUNC3(&data->update_lock);
	return count;
}
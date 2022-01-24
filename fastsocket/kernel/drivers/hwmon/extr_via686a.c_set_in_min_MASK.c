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
struct via686a_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_min; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct via686a_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC7 (struct via686a_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *da,
		const char *buf, size_t count) {
	struct via686a_data *data = FUNC2(dev);
	struct sensor_device_attribute *attr = FUNC6(da);
	int nr = attr->index;
	unsigned long val = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);
	data->in_min[nr] = FUNC0(val, nr);
	FUNC7(data, FUNC1(nr),
			data->in_min[nr]);
	FUNC4(&data->update_lock);
	return count;
}
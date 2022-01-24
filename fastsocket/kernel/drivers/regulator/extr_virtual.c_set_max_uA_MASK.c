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
struct virtual_consumer_data {long max_uA; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 struct virtual_consumer_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct virtual_consumer_data*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct virtual_consumer_data *data = FUNC0(dev);
	long val;

	if (FUNC3(buf, 10, &val) != 0)
		return count;

	FUNC1(&data->lock);

	data->max_uA = val;
	FUNC4(dev, data);

	FUNC2(&data->lock);

	return count;
}
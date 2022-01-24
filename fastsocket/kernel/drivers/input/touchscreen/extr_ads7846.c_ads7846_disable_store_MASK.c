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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ads7846 {int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC1 (struct ads7846*) ; 
 struct ads7846* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct ads7846 *ts = FUNC2(dev);
	unsigned long i;

	if (FUNC5(buf, 10, &i))
		return -EINVAL;

	FUNC3(&ts->lock);

	if (i)
		FUNC0(ts);
	else
		FUNC1(ts);

	FUNC4(&ts->lock);

	return count;
}
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
struct ad7879 {int gpio; int cmd_crtl2; int /*<<< orphan*/  mutex; int /*<<< orphan*/  bus; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int AD7879_GPIO_DATA ; 
 int /*<<< orphan*/  AD7879_REG_CTRL2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ad7879* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct ad7879 *ts = FUNC1(dev);
	unsigned long val;
	int error;

	error = FUNC4(buf, 10, &val);
	if (error)
		return error;

	FUNC2(&ts->mutex);
	ts->gpio = !!val;
	error = FUNC0(ts->bus, AD7879_REG_CTRL2,
			   ts->gpio ?
				ts->cmd_crtl2 & ~AD7879_GPIO_DATA :
				ts->cmd_crtl2 | AD7879_GPIO_DATA);
	FUNC3(&ts->mutex);

	return error ? : count;
}
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
struct ccw_device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct ccw_device*) ; 
 int FUNC1 (struct ccw_device*) ; 
 int FUNC2 (char const*,int,unsigned long*) ; 
 struct ccw_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, const char *buf,
				size_t c)
{
	struct ccw_device *cdev;
	int ret;
	unsigned long val;

	ret = FUNC2(buf, 16, &val);
	if (ret)
		return ret;

	cdev = FUNC3(dev);

	switch (val) {
	case 0:
		ret = FUNC0(cdev);
		break;
	case 1:
		ret = FUNC1(cdev);
		break;
	}

	return c;
}
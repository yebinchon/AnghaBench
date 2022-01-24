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
struct pwc_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct pwc_device* FUNC0 (struct device*) ; 
 int FUNC1 (struct pwc_device*,int) ; 
 int FUNC2 (struct pwc_device*,int,int) ; 
 scalar_t__ FUNC3 (char const*,char*,int*,int*) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *class_dev,
			      struct device_attribute *attr,
			      const char *buf, size_t count)
{
	struct pwc_device *pdev = FUNC0(class_dev);
	int pan, tilt;
	int ret = -EINVAL;

	if (FUNC5(buf, "reset", 5) == 0)
		ret = FUNC1(pdev, 0x3);

	else if (FUNC3(buf, "%d %d", &pan, &tilt) > 0)
		ret = FUNC2(pdev, pan, tilt);

	if (ret < 0)
		return ret;
	return FUNC4(buf);
}
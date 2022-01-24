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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int max_brightness; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* fujitsu ; 
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char const*,char*,int*) ; 
 scalar_t__ use_alt_lcd_levels ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			       struct device_attribute *attr, const char *buf,
			       size_t count)
{

	int level, ret;

	if (FUNC3(buf, "%i", &level) != 1
	    || (level < 0 || level >= fujitsu->max_brightness))
		return -EINVAL;

	if (use_alt_lcd_levels)
		ret = FUNC2(level);
	else
		ret = FUNC1(level);
	if (ret < 0)
		return ret;

	ret = FUNC0();
	if (ret < 0)
		return ret;

	return count;
}
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
struct rtc_time {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_time*,unsigned long*) ; 
 scalar_t__ FUNC2 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
		char *buf)
{
	ssize_t retval;
	struct rtc_time tm;

	retval = FUNC0(FUNC3(dev), &tm);
	if (retval == 0) {
		unsigned long time;
		FUNC1(&tm, &time);
		retval = FUNC2(buf, "%lu\n", time);
	}

	return retval;
}
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
struct rtc_device {int max_user_freq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 unsigned long FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtc_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t n)
{
	struct rtc_device *rtc = FUNC1(dev);
	unsigned long val = FUNC0(buf, NULL, 0);

	if (val >= 4096 || val == 0)
		return -EINVAL;

	rtc->max_user_freq = (int)val;

	return n;
}
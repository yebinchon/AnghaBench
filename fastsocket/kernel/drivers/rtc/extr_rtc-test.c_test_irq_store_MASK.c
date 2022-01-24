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
struct rtc_device {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int RTC_PF ; 
 int RTC_UF ; 
 struct rtc_device* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_device*,int,int) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	int retval;
	struct platform_device *plat_dev = FUNC3(dev);
	struct rtc_device *rtc = FUNC0(plat_dev);

	retval = count;
	if (FUNC2(buf, "tick", 4) == 0)
		FUNC1(rtc, 1, RTC_PF | RTC_IRQF);
	else if (FUNC2(buf, "alarm", 5) == 0)
		FUNC1(rtc, 1, RTC_AF | RTC_IRQF);
	else if (FUNC2(buf, "update", 6) == 0)
		FUNC1(rtc, 1, RTC_UF | RTC_IRQF);
	else
		retval = -EINVAL;

	return retval;
}
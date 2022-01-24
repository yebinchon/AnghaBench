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
struct device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 unsigned int RTC_BATT_BAD ; 
 unsigned int FUNC0 (struct rtc_time*) ; 
 int FUNC1 (struct rtc_time*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_time *tm)
{
	unsigned int ret = FUNC0(tm);

	if (ret & RTC_BATT_BAD)
		return -EOPNOTSUPP;

	return FUNC1(tm);
}
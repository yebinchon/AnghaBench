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
typedef  scalar_t__ u32 ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXC_RTC_TIME ; 
 scalar_t__ FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct rtc_time*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_time *tm)
{
	u32 val;

	/* Avoid roll-over from reading the different registers */
	do {
		val = FUNC0(dev, MXC_RTC_TIME);
	} while (val != FUNC0(dev, MXC_RTC_TIME));

	FUNC1(val, tm);

	return 0;
}
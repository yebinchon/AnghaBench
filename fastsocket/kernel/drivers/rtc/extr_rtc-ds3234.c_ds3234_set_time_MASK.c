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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS3234_REG_DATE ; 
 int /*<<< orphan*/  DS3234_REG_DAY ; 
 int /*<<< orphan*/  DS3234_REG_HOURS ; 
 int /*<<< orphan*/  DS3234_REG_MINUTES ; 
 int /*<<< orphan*/  DS3234_REG_MONTH ; 
 int /*<<< orphan*/  DS3234_REG_SECONDS ; 
 int /*<<< orphan*/  DS3234_REG_YEAR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_time *dt)
{
	FUNC1(dev, DS3234_REG_SECONDS, FUNC0(dt->tm_sec));
	FUNC1(dev, DS3234_REG_MINUTES, FUNC0(dt->tm_min));
	FUNC1(dev, DS3234_REG_HOURS, FUNC0(dt->tm_hour) & 0x3f);

	/* 0 = Sun */
	FUNC1(dev, DS3234_REG_DAY, FUNC0(dt->tm_wday + 1));
	FUNC1(dev, DS3234_REG_DATE, FUNC0(dt->tm_mday));

	/* 0 = Jan */
	FUNC1(dev, DS3234_REG_MONTH, FUNC0(dt->tm_mon + 1));

	/* Assume 20YY although we just want to make sure not to go negative. */
	if (dt->tm_year > 100)
		dt->tm_year -= 100;

	FUNC1(dev, DS3234_REG_YEAR, FUNC0(dt->tm_year));

	return 0;
}
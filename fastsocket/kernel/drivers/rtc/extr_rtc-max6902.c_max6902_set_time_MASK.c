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
struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_wday; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct rtc_time *dt)
{
	dt->tm_year = dt->tm_year + 1900;

	/* Remove write protection */
	FUNC1(dev, 0xF, 0);

	FUNC1(dev, 0x01, FUNC0(dt->tm_sec));
	FUNC1(dev, 0x03, FUNC0(dt->tm_min));
	FUNC1(dev, 0x05, FUNC0(dt->tm_hour));

	FUNC1(dev, 0x07, FUNC0(dt->tm_mday));
	FUNC1(dev, 0x09, FUNC0(dt->tm_mon + 1));
	FUNC1(dev, 0x0B, FUNC0(dt->tm_wday));
	FUNC1(dev, 0x0D, FUNC0(dt->tm_year % 100));
	FUNC1(dev, 0x13, FUNC0(dt->tm_year / 100));

	/* Compulab used a delay here. However, the datasheet
	 * does not mention a delay being required anywhere... */
	/* delay(2000); */

	/* Write protect */
	FUNC1(dev, 0xF, 0x80);

	return 0;
}
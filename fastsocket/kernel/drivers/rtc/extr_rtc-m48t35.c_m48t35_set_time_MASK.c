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
typedef  unsigned char u8 ;
struct rtc_time {int tm_year; int tm_mon; unsigned char tm_mday; unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;
struct m48t35_priv {int /*<<< orphan*/  lock; TYPE_1__* reg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  control; int /*<<< orphan*/  sec; int /*<<< orphan*/  min; int /*<<< orphan*/  hour; int /*<<< orphan*/  date; int /*<<< orphan*/  month; int /*<<< orphan*/  year; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned char M48T35_RTC_SET ; 
 void* FUNC0 (unsigned int) ; 
 struct m48t35_priv* FUNC1 (struct device*) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct m48t35_priv *priv = FUNC1(dev);
	unsigned char mon, day, hrs, min, sec;
	unsigned int yrs;
	u8 control;

	yrs = tm->tm_year + 1900;
	mon = tm->tm_mon + 1;   /* tm_mon starts at zero */
	day = tm->tm_mday;
	hrs = tm->tm_hour;
	min = tm->tm_min;
	sec = tm->tm_sec;

	if (yrs < 1970)
		return -EINVAL;

	yrs -= 1970;
	if (yrs > 255)    /* They are unsigned */
		return -EINVAL;

	if (yrs > 169)
		return -EINVAL;

	if (yrs >= 100)
		yrs -= 100;

	sec = FUNC0(sec);
	min = FUNC0(min);
	hrs = FUNC0(hrs);
	day = FUNC0(day);
	mon = FUNC0(mon);
	yrs = FUNC0(yrs);

	FUNC3(&priv->lock);
	control = FUNC2(&priv->reg->control);
	FUNC5(control | M48T35_RTC_SET, &priv->reg->control);
	FUNC5(yrs, &priv->reg->year);
	FUNC5(mon, &priv->reg->month);
	FUNC5(day, &priv->reg->date);
	FUNC5(hrs, &priv->reg->hour);
	FUNC5(min, &priv->reg->min);
	FUNC5(sec, &priv->reg->sec);
	FUNC5(control, &priv->reg->control);
	FUNC4(&priv->lock);
	return 0;
}
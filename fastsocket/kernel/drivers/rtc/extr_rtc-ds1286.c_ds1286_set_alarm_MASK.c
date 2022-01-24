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
struct TYPE_2__ {unsigned char tm_hour; unsigned char tm_min; unsigned char tm_sec; } ;
struct rtc_wkalrm {TYPE_1__ time; } ;
struct ds1286_priv {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RTC_HOURS_ALARM ; 
 int /*<<< orphan*/  RTC_MINUTES_ALARM ; 
 unsigned char FUNC0 (unsigned char) ; 
 struct ds1286_priv* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ds1286_priv*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alm)
{
	struct ds1286_priv *priv = FUNC1(dev);
	unsigned char hrs, min, sec;

	hrs = alm->time.tm_hour;
	min = alm->time.tm_min;
	sec = alm->time.tm_sec;

	if (hrs >= 24)
		hrs = 0xff;

	if (min >= 60)
		min = 0xff;

	if (sec != 0)
		return -EINVAL;

	min = FUNC0(min);
	hrs = FUNC0(hrs);

	FUNC3(&priv->lock);
	FUNC2(priv, hrs, RTC_HOURS_ALARM);
	FUNC2(priv, min, RTC_MINUTES_ALARM);
	FUNC4(&priv->lock);

	return 0;
}
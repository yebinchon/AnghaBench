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
struct TYPE_2__ {int tm_min; int tm_hour; int tm_wday; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {TYPE_1__ time; } ;
struct ds1286_priv {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_CMD ; 
 int /*<<< orphan*/  RTC_DAY_ALARM ; 
 int /*<<< orphan*/  RTC_HOURS_ALARM ; 
 int /*<<< orphan*/  RTC_MINUTES_ALARM ; 
 void* FUNC0 (int) ; 
 struct ds1286_priv* FUNC1 (struct device*) ; 
 int FUNC2 (struct ds1286_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alm)
{
	struct ds1286_priv *priv = FUNC1(dev);
	unsigned char cmd;
	unsigned long flags;

	/*
	 * Only the values that we read from the RTC are set. That
	 * means only tm_wday, tm_hour, tm_min.
	 */
	FUNC3(&priv->lock, flags);
	alm->time.tm_min = FUNC2(priv, RTC_MINUTES_ALARM) & 0x7f;
	alm->time.tm_hour = FUNC2(priv, RTC_HOURS_ALARM)  & 0x1f;
	alm->time.tm_wday = FUNC2(priv, RTC_DAY_ALARM)    & 0x07;
	cmd = FUNC2(priv, RTC_CMD);
	FUNC4(&priv->lock, flags);

	alm->time.tm_min = FUNC0(alm->time.tm_min);
	alm->time.tm_hour = FUNC0(alm->time.tm_hour);
	alm->time.tm_sec = 0;
	return 0;
}
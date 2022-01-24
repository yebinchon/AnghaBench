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
typedef  int u8 ;
struct rtc_time {int tm_year; int tm_mday; int tm_hour; int tm_min; int tm_sec; int /*<<< orphan*/  tm_mon; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct TYPE_2__ {struct m48t59_plat_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct m48t59_private {scalar_t__ irq; int /*<<< orphan*/  lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  M48T59_ALARM_DATE ; 
 int /*<<< orphan*/  M48T59_ALARM_HOUR ; 
 int /*<<< orphan*/  M48T59_ALARM_MIN ; 
 int /*<<< orphan*/  M48T59_ALARM_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M48T59_CNTL ; 
 int /*<<< orphan*/  M48T59_CNTL_WRITE ; 
 int /*<<< orphan*/  M48T59_MDAY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ NO_IRQ ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int,int /*<<< orphan*/ ,int,int,int,int) ; 
 struct m48t59_private* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct platform_device* FUNC9 (struct device*) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct platform_device *pdev = FUNC9(dev);
	struct m48t59_plat_data *pdata = pdev->dev.platform_data;
	struct m48t59_private *m48t59 = FUNC6(pdev);
	struct rtc_time *tm = &alrm->time;
	u8 mday, hour, min, sec;
	unsigned long flags;
	int year = tm->tm_year;

#ifdef CONFIG_SPARC
	/* Sun SPARC machines count years since 1968 */
	year -= 68;
#endif

	/* If no irq, we don't support ALARM */
	if (m48t59->irq == NO_IRQ)
		return -EIO;

	if (year < 0)
		return -EINVAL;

	/*
	 * 0xff means "always match"
	 */
	mday = tm->tm_mday;
	mday = (mday >= 1 && mday <= 31) ? FUNC4(mday) : 0xff;
	if (mday == 0xff)
		mday = FUNC1(M48T59_MDAY);

	hour = tm->tm_hour;
	hour = (hour < 24) ? FUNC4(hour) : 0x00;

	min = tm->tm_min;
	min = (min < 60) ? FUNC4(min) : 0x00;

	sec = tm->tm_sec;
	sec = (sec < 60) ? FUNC4(sec) : 0x00;

	FUNC7(&m48t59->lock, flags);
	/* Issue the WRITE command */
	FUNC2(M48T59_CNTL_WRITE, M48T59_CNTL);

	FUNC3(mday, M48T59_ALARM_DATE);
	FUNC3(hour, M48T59_ALARM_HOUR);
	FUNC3(min, M48T59_ALARM_MIN);
	FUNC3(sec, M48T59_ALARM_SEC);

	/* Clear the WRITE bit */
	FUNC0(M48T59_CNTL_WRITE, M48T59_CNTL);
	FUNC8(&m48t59->lock, flags);

	FUNC5(dev, "RTC set alarm time %04d-%02d-%02d %02d/%02d/%02d\n",
		year + 1900, tm->tm_mon, tm->tm_mday,
		tm->tm_hour, tm->tm_min, tm->tm_sec);
	return 0;
}
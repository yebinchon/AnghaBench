#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtc_time {void* tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct fm3130 {int* regs; int /*<<< orphan*/  msg; TYPE_2__* client; int /*<<< orphan*/  data_valid; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FM3130_MODE_NORMAL ; 
 int /*<<< orphan*/  FM3130_MODE_READ ; 
 size_t FM3130_RTC_DATE ; 
 size_t FM3130_RTC_DAY ; 
 size_t FM3130_RTC_HOURS ; 
 size_t FM3130_RTC_MINUTES ; 
 size_t FM3130_RTC_MONTHS ; 
 size_t FM3130_RTC_SECONDS ; 
 size_t FM3130_RTC_YEARS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,int,int,int,int,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*,int) ; 
 struct fm3130* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct rtc_time *t)
{
	struct fm3130 *fm3130 = FUNC3(dev);
	int		tmp;

	if (!fm3130->data_valid) {
		/* We have invalid data in RTC, probably due
		to battery faults or other problems. Return EIO
		for now, it will allow us to set data later insted
		of error during probing which disables device */
		return -EIO;
	}
	FUNC4(dev, FM3130_MODE_READ);

	/* read the RTC date and time registers all at once */
	tmp = FUNC5(FUNC7(fm3130->client->dev.parent),
			fm3130->msg, 2);
	if (tmp != 2) {
		FUNC2(dev, "%s error %d\n", "read", tmp);
		return -EIO;
	}

	FUNC4(dev, FM3130_MODE_NORMAL);

	FUNC1(dev, "%s: %02x %02x %02x %02x %02x %02x %02x %02x"
			"%02x %02x %02x %02x %02x %02x %02x\n",
			"read",
			fm3130->regs[0], fm3130->regs[1],
			fm3130->regs[2], fm3130->regs[3],
			fm3130->regs[4], fm3130->regs[5],
			fm3130->regs[6], fm3130->regs[7],
			fm3130->regs[8], fm3130->regs[9],
			fm3130->regs[0xa], fm3130->regs[0xb],
			fm3130->regs[0xc], fm3130->regs[0xd],
			fm3130->regs[0xe]);

	t->tm_sec = FUNC0(fm3130->regs[FM3130_RTC_SECONDS] & 0x7f);
	t->tm_min = FUNC0(fm3130->regs[FM3130_RTC_MINUTES] & 0x7f);
	tmp = fm3130->regs[FM3130_RTC_HOURS] & 0x3f;
	t->tm_hour = FUNC0(tmp);
	t->tm_wday = FUNC0(fm3130->regs[FM3130_RTC_DAY] & 0x07) - 1;
	t->tm_mday = FUNC0(fm3130->regs[FM3130_RTC_DATE] & 0x3f);
	tmp = fm3130->regs[FM3130_RTC_MONTHS] & 0x1f;
	t->tm_mon = FUNC0(tmp) - 1;

	/* assume 20YY not 19YY, and ignore CF bit */
	t->tm_year = FUNC0(fm3130->regs[FM3130_RTC_YEARS]) + 100;

	FUNC1(dev, "%s secs=%d, mins=%d, "
		"hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
		"read", t->tm_sec, t->tm_min,
		t->tm_hour, t->tm_mday,
		t->tm_mon, t->tm_year, t->tm_wday);

	/* initial clock setting can be undefined */
	return FUNC6(t);
}
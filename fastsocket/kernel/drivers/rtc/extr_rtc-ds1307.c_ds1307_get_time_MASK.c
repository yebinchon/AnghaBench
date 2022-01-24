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
struct ds1307 {int (* read_block_data ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ;int* regs; int /*<<< orphan*/  offset; int /*<<< orphan*/  client; } ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t DS1307_REG_HOUR ; 
 size_t DS1307_REG_MDAY ; 
 size_t DS1307_REG_MIN ; 
 size_t DS1307_REG_MONTH ; 
 size_t DS1307_REG_SECS ; 
 size_t DS1307_REG_WDAY ; 
 size_t DS1307_REG_YEAR ; 
 int EIO ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*,int) ; 
 struct ds1307* FUNC3 (struct device*) ; 
 int FUNC4 (struct rtc_time*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *t)
{
	struct ds1307	*ds1307 = FUNC3(dev);
	int		tmp;

	/* read the RTC date and time registers all at once */
	tmp = ds1307->read_block_data(ds1307->client,
		ds1307->offset, 7, ds1307->regs);
	if (tmp != 7) {
		FUNC2(dev, "%s error %d\n", "read", tmp);
		return -EIO;
	}

	FUNC1(dev, "%s: %02x %02x %02x %02x %02x %02x %02x\n",
			"read",
			ds1307->regs[0], ds1307->regs[1],
			ds1307->regs[2], ds1307->regs[3],
			ds1307->regs[4], ds1307->regs[5],
			ds1307->regs[6]);

	t->tm_sec = FUNC0(ds1307->regs[DS1307_REG_SECS] & 0x7f);
	t->tm_min = FUNC0(ds1307->regs[DS1307_REG_MIN] & 0x7f);
	tmp = ds1307->regs[DS1307_REG_HOUR] & 0x3f;
	t->tm_hour = FUNC0(tmp);
	t->tm_wday = FUNC0(ds1307->regs[DS1307_REG_WDAY] & 0x07) - 1;
	t->tm_mday = FUNC0(ds1307->regs[DS1307_REG_MDAY] & 0x3f);
	tmp = ds1307->regs[DS1307_REG_MONTH] & 0x1f;
	t->tm_mon = FUNC0(tmp) - 1;

	/* assume 20YY not 19YY, and ignore DS1337_BIT_CENTURY */
	t->tm_year = FUNC0(ds1307->regs[DS1307_REG_YEAR]) + 100;

	FUNC1(dev, "%s secs=%d, mins=%d, "
		"hours=%d, mday=%d, mon=%d, year=%d, wday=%d\n",
		"read", t->tm_sec, t->tm_min,
		t->tm_hour, t->tm_mday,
		t->tm_mon, t->tm_year, t->tm_wday);

	/* initial clock setting can be undefined */
	return FUNC4(t);
}
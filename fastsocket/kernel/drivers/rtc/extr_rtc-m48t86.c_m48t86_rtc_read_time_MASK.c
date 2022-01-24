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
struct rtc_time {unsigned char tm_sec; unsigned char tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct TYPE_2__ {struct m48t86_ops* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct m48t86_ops {unsigned char (* readbyte ) (int /*<<< orphan*/ ) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M48T86_REG_B ; 
 unsigned char M48T86_REG_B_DM ; 
 unsigned char M48T86_REG_B_H24 ; 
 int /*<<< orphan*/  M48T86_REG_DOM ; 
 int /*<<< orphan*/  M48T86_REG_DOW ; 
 int /*<<< orphan*/  M48T86_REG_HOUR ; 
 int /*<<< orphan*/  M48T86_REG_MIN ; 
 int /*<<< orphan*/  M48T86_REG_MONTH ; 
 int /*<<< orphan*/  M48T86_REG_SEC ; 
 int /*<<< orphan*/  M48T86_REG_YEAR ; 
 int FUNC0 (int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC17 (struct device*) ; 

__attribute__((used)) static int FUNC18(struct device *dev, struct rtc_time *tm)
{
	unsigned char reg;
	struct platform_device *pdev = FUNC17(dev);
	struct m48t86_ops *ops = pdev->dev.platform_data;

	reg = ops->readbyte(M48T86_REG_B);

	if (reg & M48T86_REG_B_DM) {
		/* data (binary) mode */
		tm->tm_sec	= ops->readbyte(M48T86_REG_SEC);
		tm->tm_min	= ops->readbyte(M48T86_REG_MIN);
		tm->tm_hour	= ops->readbyte(M48T86_REG_HOUR) & 0x3F;
		tm->tm_mday	= ops->readbyte(M48T86_REG_DOM);
		/* tm_mon is 0-11 */
		tm->tm_mon	= ops->readbyte(M48T86_REG_MONTH) - 1;
		tm->tm_year	= ops->readbyte(M48T86_REG_YEAR) + 100;
		tm->tm_wday	= ops->readbyte(M48T86_REG_DOW);
	} else {
		/* bcd mode */
		tm->tm_sec	= FUNC0(ops->readbyte(M48T86_REG_SEC));
		tm->tm_min	= FUNC0(ops->readbyte(M48T86_REG_MIN));
		tm->tm_hour	= FUNC0(ops->readbyte(M48T86_REG_HOUR) & 0x3F);
		tm->tm_mday	= FUNC0(ops->readbyte(M48T86_REG_DOM));
		/* tm_mon is 0-11 */
		tm->tm_mon	= FUNC0(ops->readbyte(M48T86_REG_MONTH)) - 1;
		tm->tm_year	= FUNC0(ops->readbyte(M48T86_REG_YEAR)) + 100;
		tm->tm_wday	= FUNC0(ops->readbyte(M48T86_REG_DOW));
	}

	/* correct the hour if the clock is in 12h mode */
	if (!(reg & M48T86_REG_B_H24))
		if (ops->readbyte(M48T86_REG_HOUR) & 0x80)
			tm->tm_hour += 12;

	return 0;
}
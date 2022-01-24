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
typedef  int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;
struct bq4802 {int (* read ) (struct bq4802*,int) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  (* write ) (struct bq4802*,int,int) ;} ;

/* Variables and functions */
 void* FUNC0 (unsigned int) ; 
 struct bq4802* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct bq4802*,int) ; 
 unsigned int FUNC5 (struct bq4802*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bq4802*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bq4802*,int,int) ; 
 int FUNC8 (struct bq4802*,int) ; 
 int FUNC9 (struct bq4802*,int) ; 
 int FUNC10 (struct bq4802*,int) ; 
 int FUNC11 (struct bq4802*,int) ; 
 int FUNC12 (struct bq4802*,int) ; 
 int FUNC13 (struct bq4802*,int) ; 
 int FUNC14 (struct bq4802*,int) ; 
 struct platform_device* FUNC15 (struct device*) ; 

__attribute__((used)) static int FUNC16(struct device *dev, struct rtc_time *tm)
{
	struct platform_device *pdev = FUNC15(dev);
	struct bq4802 *p = FUNC1(pdev);
	unsigned long flags;
	unsigned int century;
	u8 val;

	FUNC2(&p->lock, flags);

	val = p->read(p, 0x0e);
	p->write(p, 0xe, val | 0x08);

	tm->tm_sec = p->read(p, 0x00);
	tm->tm_min = p->read(p, 0x02);
	tm->tm_hour = p->read(p, 0x04);
	tm->tm_mday = p->read(p, 0x06);
	tm->tm_mon = p->read(p, 0x09);
	tm->tm_year = p->read(p, 0x0a);
	tm->tm_wday = p->read(p, 0x08);
	century = p->read(p, 0x0f);

	p->write(p, 0x0e, val);

	FUNC3(&p->lock, flags);

	tm->tm_sec = FUNC0(tm->tm_sec);
	tm->tm_min = FUNC0(tm->tm_min);
	tm->tm_hour = FUNC0(tm->tm_hour);
	tm->tm_mday = FUNC0(tm->tm_mday);
	tm->tm_mon = FUNC0(tm->tm_mon);
	tm->tm_year = FUNC0(tm->tm_year);
	tm->tm_wday = FUNC0(tm->tm_wday);
	century = FUNC0(century);

	tm->tm_year += (century * 100);
	tm->tm_year -= 1900;

	tm->tm_mon--;

	return 0;
}
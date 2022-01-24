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
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
struct bfin_rtc {int rtc_wrote_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct bfin_rtc* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (struct rtc_time*,unsigned long*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct bfin_rtc *rtc = FUNC3(dev);
	int ret;
	unsigned long now;

	FUNC2(dev);

	ret = FUNC5(tm, &now);
	if (ret == 0) {
		if (rtc->rtc_wrote_regs & 0x1)
			FUNC0(dev);
		FUNC1(FUNC4(now));
		rtc->rtc_wrote_regs = 0x1;
	}

	return ret;
}
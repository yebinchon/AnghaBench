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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct bfin_rtc* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct rtc_time*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct bfin_rtc *rtc = FUNC3(dev);

	FUNC2(dev);

	if (rtc->rtc_wrote_regs & 0x1)
		FUNC1(dev);

	FUNC4(FUNC0(), tm);

	return 0;
}
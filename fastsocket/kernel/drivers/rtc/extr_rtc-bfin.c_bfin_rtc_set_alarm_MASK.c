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
struct rtc_wkalrm {scalar_t__ enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct bfin_rtc {int /*<<< orphan*/  rtc_alarm; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct bfin_rtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct bfin_rtc* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned long*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct bfin_rtc *rtc = FUNC4(dev);
	unsigned long rtc_alarm;

	FUNC3(dev);

	if (FUNC6(&alrm->time, &rtc_alarm))
		return -EINVAL;

	rtc->rtc_alarm = alrm->time;

	FUNC1(dev);
	FUNC2(FUNC5(rtc_alarm));
	if (alrm->enabled)
		FUNC0(rtc);

	return 0;
}
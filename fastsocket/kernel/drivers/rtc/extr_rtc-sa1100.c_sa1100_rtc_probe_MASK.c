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
struct rtc_device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 scalar_t__ RCNR ; 
 scalar_t__ RTC_DEF_DIVIDER ; 
 int RTC_DEF_TRIM ; 
 scalar_t__ RTTR ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct rtc_device*) ; 
 struct rtc_device* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa1100_rtc_ops ; 
 int /*<<< orphan*/  timer_freq ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct rtc_device *rtc;

	timer_freq = FUNC4();

	/*
	 * According to the manual we should be able to let RTTR be zero
	 * and then a default diviser for a 32.768KHz clock is used.
	 * Apparently this doesn't work, at least for my SA1110 rev 5.
	 * If the clock divider is uninitialized then reset it to the
	 * default value to get the 1Hz clock.
	 */
	if (RTTR == 0) {
		RTTR = RTC_DEF_DIVIDER + (RTC_DEF_TRIM << 16);
		FUNC2(&pdev->dev, "warning: initializing default clock divider/trim value\n");
		/* The current RTC value probably doesn't make sense either */
		RCNR = 0;
	}

	FUNC3(&pdev->dev, 1);

	rtc = FUNC6(pdev->name, &pdev->dev, &sa1100_rtc_ops,
				THIS_MODULE);

	if (FUNC0(rtc))
		return FUNC1(rtc);

	FUNC5(pdev, rtc);

	return 0;
}
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
struct TYPE_4__ {TYPE_1__* pdev; struct rtc_device* rtc; } ;
struct wm8350 {TYPE_2__ rtc; } ;
struct rtc_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RTC_AF ; 
 int RTC_IRQF ; 
 int /*<<< orphan*/  WM8350_RTC_ALMSET ; 
 int /*<<< orphan*/  WM8350_RTC_TIME_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_device*,int,int) ; 
 int FUNC2 (struct wm8350*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wm8350 *wm8350, int irq,
				     void *data)
{
	struct rtc_device *rtc = wm8350->rtc.rtc;
	int ret;

	FUNC1(rtc, 1, RTC_IRQF | RTC_AF);

	/* Make it one shot */
	ret = FUNC2(wm8350, WM8350_RTC_TIME_CONTROL,
			      WM8350_RTC_ALMSET);
	if (ret != 0) {
		FUNC0(&(wm8350->rtc.pdev->dev),
			"Failed to disable alarm: %d\n", ret);
	}
}
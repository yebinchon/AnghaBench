#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wm831x_rtc {int alarm_enabled; int /*<<< orphan*/  rtc; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int WM831X_RTC_ALM_ENA ; 
 int /*<<< orphan*/  WM831X_RTC_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,...) ; 
 struct wm831x* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wm831x_rtc*) ; 
 struct wm831x_rtc* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct wm831x_rtc*) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm831x_alm_irq ; 
 int /*<<< orphan*/  wm831x_per_irq ; 
 int FUNC10 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct wm831x*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct wm831x_rtc*) ; 
 int /*<<< orphan*/  wm831x_rtc_ops ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct wm831x *wm831x = FUNC3(pdev->dev.parent);
	struct wm831x_rtc *wm831x_rtc;
	int per_irq = FUNC7(pdev, "PER");
	int alm_irq = FUNC7(pdev, "ALM");
	int ret = 0;

	wm831x_rtc = FUNC6(sizeof(*wm831x_rtc), GFP_KERNEL);
	if (wm831x_rtc == NULL)
		return -ENOMEM;

	FUNC8(pdev, wm831x_rtc);
	wm831x_rtc->wm831x = wm831x;

	ret = FUNC10(wm831x, WM831X_RTC_CONTROL);
	if (ret < 0) {
		FUNC2(&pdev->dev, "Failed to read RTC control: %d\n", ret);
		goto err;
	}
	if (ret & WM831X_RTC_ALM_ENA)
		wm831x_rtc->alarm_enabled = 1;

	FUNC4(&pdev->dev, 1);

	wm831x_rtc->rtc = FUNC9("wm831x", &pdev->dev,
					      &wm831x_rtc_ops, THIS_MODULE);
	if (FUNC0(wm831x_rtc->rtc)) {
		ret = FUNC1(wm831x_rtc->rtc);
		goto err;
	}

	ret = FUNC11(wm831x, per_irq, wm831x_per_irq,
				 IRQF_TRIGGER_RISING, "wm831x_rtc_per",
				 wm831x_rtc);
	if (ret != 0) {
		FUNC2(&pdev->dev, "Failed to request periodic IRQ %d: %d\n",
			per_irq, ret);
	}

	ret = FUNC11(wm831x, alm_irq, wm831x_alm_irq,
				 IRQF_TRIGGER_RISING, "wm831x_rtc_alm",
				 wm831x_rtc);
	if (ret != 0) {
		FUNC2(&pdev->dev, "Failed to request alarm IRQ %d: %d\n",
			alm_irq, ret);
	}

	return 0;

err:
	FUNC5(wm831x_rtc);
	return ret;
}
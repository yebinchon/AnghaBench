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
struct wm8350 {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8350_IRQ_RTC_SEC ; 
 struct wm8350* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct wm8350*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wm8350*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
					unsigned int enabled)
{
	struct wm8350 *wm8350 = FUNC0(dev);

	if (enabled)
		FUNC2(wm8350, WM8350_IRQ_RTC_SEC);
	else
		FUNC1(wm8350, WM8350_IRQ_RTC_SEC);

	return 0;
}
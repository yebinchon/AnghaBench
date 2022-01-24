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
struct wm8350_led {int /*<<< orphan*/  isink; int /*<<< orphan*/  dcdc; int /*<<< orphan*/  cdev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct wm8350_led*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wm8350_led* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wm8350_led*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct wm8350_led *led = FUNC3(pdev);

	FUNC2(&led->cdev);
	FUNC0();
	FUNC5(led);
	FUNC4(led->dcdc);
	FUNC4(led->isink);
	FUNC1(led);
	return 0;
}
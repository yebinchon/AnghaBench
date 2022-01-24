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
struct wm8350_led {int /*<<< orphan*/  mutex; int /*<<< orphan*/  value; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wm8350_led* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct wm8350_led*) ; 

__attribute__((used)) static void FUNC4(struct platform_device *pdev)
{
	struct wm8350_led *led = FUNC2(pdev);

	FUNC0(&led->mutex);
	led->value = LED_OFF;
	FUNC3(led);
	FUNC1(&led->mutex);
}
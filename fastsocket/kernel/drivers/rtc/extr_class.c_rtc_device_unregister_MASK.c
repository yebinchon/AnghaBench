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
struct rtc_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  ops_lock; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtc_device*) ; 

void FUNC8(struct rtc_device *rtc)
{
	if (FUNC1(&rtc->dev) != NULL) {
		FUNC2(&rtc->ops_lock);
		/* remove innards of this RTC, then disable it, before
		 * letting any rtc_class_open() users access it again
		 */
		FUNC7(rtc);
		FUNC5(rtc);
		FUNC6(rtc);
		FUNC0(&rtc->dev);
		rtc->ops = NULL;
		FUNC3(&rtc->ops_lock);
		FUNC4(&rtc->dev);
	}
}
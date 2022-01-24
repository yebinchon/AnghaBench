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
struct rtc_task {int /*<<< orphan*/ * func; } ;
struct rtc_device {int /*<<< orphan*/  flags; int /*<<< orphan*/  irq_task_lock; struct rtc_task* irq_task; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  RTC_DEV_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct rtc_device *rtc, struct rtc_task *task)
{
	int retval = -EBUSY;

	if (task == NULL || task->func == NULL)
		return -EINVAL;

	/* Cannot register while the char dev is in use */
	if (FUNC3(RTC_DEV_BUSY, &rtc->flags))
		return -EBUSY;

	FUNC1(&rtc->irq_task_lock);
	if (rtc->irq_task == NULL) {
		rtc->irq_task = task;
		retval = 0;
	}
	FUNC2(&rtc->irq_task_lock);

	FUNC0(RTC_DEV_BUSY, &rtc->flags);

	return retval;
}
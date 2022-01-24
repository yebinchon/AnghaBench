#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtc_device {unsigned long irq_data; int /*<<< orphan*/  async_queue; int /*<<< orphan*/  irq_queue; int /*<<< orphan*/  irq_task_lock; TYPE_1__* irq_task; int /*<<< orphan*/  irq_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  private_data; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct rtc_device *rtc,
		unsigned long num, unsigned long events)
{
	unsigned long flags;

	FUNC1(&rtc->irq_lock, flags);
	rtc->irq_data = (rtc->irq_data + (num << 8)) | events;
	FUNC2(&rtc->irq_lock, flags);

	FUNC1(&rtc->irq_task_lock, flags);
	if (rtc->irq_task)
		rtc->irq_task->func(rtc->irq_task->private_data);
	FUNC2(&rtc->irq_task_lock, flags);

	FUNC4(&rtc->irq_queue);
	FUNC0(&rtc->async_queue, SIGIO, POLL_IN);
}
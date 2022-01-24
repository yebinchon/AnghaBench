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
struct sh_rtc {int periodic_freq; struct rtc_device* rtc_dev; scalar_t__ regbase; } ;
struct rtc_task {int /*<<< orphan*/  private_data; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;} ;
struct rtc_device {int /*<<< orphan*/  irq_task_lock; struct rtc_task* irq_task; } ;

/* Variables and functions */
 int PF_COUNT ; 
 int PF_HP ; 
 int PF_KOU ; 
 scalar_t__ RCR2 ; 
 unsigned int RCR2_PEF ; 
 int RTC_IRQF ; 
 int RTC_PF ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct sh_rtc *rtc)
{
	struct rtc_device *rtc_dev = rtc->rtc_dev;
	struct rtc_task *irq_task;
	unsigned int tmp, pending;

	tmp = FUNC0(rtc->regbase + RCR2);
	pending = tmp & RCR2_PEF;
	tmp &= ~RCR2_PEF;
	FUNC5(tmp, rtc->regbase + RCR2);

	if (!pending)
		return 0;

	/* Half period enabled than one skipped and the next notified */
	if ((rtc->periodic_freq & PF_HP) && (rtc->periodic_freq & PF_COUNT))
		rtc->periodic_freq &= ~PF_COUNT;
	else {
		if (rtc->periodic_freq & PF_HP)
			rtc->periodic_freq |= PF_COUNT;
		if (rtc->periodic_freq & PF_KOU) {
			FUNC2(&rtc_dev->irq_task_lock);
			irq_task = rtc_dev->irq_task;
			if (irq_task)
				irq_task->func(irq_task->private_data);
			FUNC3(&rtc_dev->irq_task_lock);
		} else
			FUNC1(rtc->rtc_dev, 1, RTC_PF | RTC_IRQF);
	}

	return pending;
}
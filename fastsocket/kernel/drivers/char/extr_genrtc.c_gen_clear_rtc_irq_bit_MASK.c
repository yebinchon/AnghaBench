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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gen_rtc_lock ; 
 scalar_t__ irq_active ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ stask_active ; 
 int stop_rtc_timers ; 
 int /*<<< orphan*/  timer_task ; 
 scalar_t__ ttask_active ; 

__attribute__((used)) static inline void FUNC4(unsigned char bit)
{
#ifdef CONFIG_GEN_RTC_X
	stop_rtc_timers = 1;
	if (ttask_active){
		del_timer_sync(&timer_task);
		ttask_active = 0;
	}
	while (stask_active)
		schedule();

	spin_lock(&gen_rtc_lock);
	irq_active = 0;
	spin_unlock(&gen_rtc_lock);
#endif
}
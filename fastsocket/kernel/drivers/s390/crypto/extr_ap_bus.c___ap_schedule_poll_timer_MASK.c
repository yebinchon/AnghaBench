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
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  ap_poll_timer ; 
 int /*<<< orphan*/  ap_poll_timer_lock ; 
 scalar_t__ ap_suspend_flag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  poll_timeout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC8(void)
{
	ktime_t hr_time;

	FUNC6(&ap_poll_timer_lock);
	if (FUNC2(&ap_poll_timer) || ap_suspend_flag)
		goto out;
	if (FUNC5(FUNC0(&ap_poll_timer)) <= 0) {
		hr_time = FUNC4(0, poll_timeout);
		FUNC1(&ap_poll_timer, hr_time);
		FUNC3(&ap_poll_timer);
	}
out:
	FUNC7(&ap_poll_timer_lock);
}
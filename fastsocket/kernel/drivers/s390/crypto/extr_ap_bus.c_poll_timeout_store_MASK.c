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
struct bus_type {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  ap_poll_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long long) ; 
 unsigned long long poll_timeout ; 
 int FUNC6 (char const*,char*,unsigned long long*) ; 

__attribute__((used)) static ssize_t FUNC7(struct bus_type *bus, const char *buf,
				  size_t count)
{
	unsigned long long time;
	ktime_t hr_time;

	/* 120 seconds = maximum poll interval */
	if (FUNC6(buf, "%llu\n", &time) != 1 || time < 1 ||
	    time > 120000000000ULL)
		return -EINVAL;
	poll_timeout = time;
	hr_time = FUNC5(0, poll_timeout);

	if (!FUNC2(&ap_poll_timer) ||
	    !FUNC0(&ap_poll_timer, FUNC1(&ap_poll_timer), hr_time)) {
		FUNC3(&ap_poll_timer, hr_time);
		FUNC4(&ap_poll_timer, HRTIMER_MODE_ABS);
	}
	return count;
}